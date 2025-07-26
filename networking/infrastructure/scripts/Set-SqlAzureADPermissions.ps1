param(
    [string] $ConnectionString = "Data Source=tcp:sqlserver-uks-it-de2-data-01.database.windows.net,1433;Initial Catalog=sqldb-uks-it-de2-data-01;Persist Security Info=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;",
    [string] $AzureADUserConfigurationJson = '[
        {
            "name": "$(FunctionApp.Name)",
            "type": "ServicePrincipal",
            "roles": [
                "All_Execute"
            ]
        }
    ]'    
)

function Execute-SqlStatement ($Connection, $Statement) {
    $sqlCommand = New-Object System.Data.SqlClient.SqlCommand;
    $sqlCommand.Connection = $Connection;
    $sqlCommand.CommandType = [System.Data.CommandType]::Text;

    $sqlCommand.CommandText = $Statement;       
    $sqlCommand.ExecuteNonQuery() | Out-Null;
}

function ConvertTo-Sid ($AppId) {
    [guid]$guid = [System.Guid]::Parse($AppId)
    foreach ($byte in $guid.ToByteArray()) {

        $byteGuid += [System.String]::Format("{0:X2}", $byte)

    }
    return "0x" + $byteGuid
}

function Get-AzureADPrincipalId($PrincipalName, $PrincipalType) {
    $principalId = switch ($PrincipalType) {
        "Group" { 
            (Get-AzADGroup -DisplayName $PrincipalName).Id
        }
        "User" { 
            (Get-AzADUser -UserPrincipalName "$PrincipalName").Id
        }
        "ServicePrincipal" {
            (Get-AzADServicePrincipal -DisplayName "$PrincipalName").AppId
        }
    }
    return $principalId;
}

# Parse permission config
$users = $AzureADUserConfigurationJson | ConvertFrom-Json

if (($users | Measure-Object).Count -gt 0) {    
    # Get token to access SQL DB
    $context = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile.DefaultContext
    $accessToken = [Microsoft.Azure.Commands.Common.Authentication.AzureSession]::Instance.AuthenticationFactory.Authenticate($context.Account, $context.Environment, $context.Tenant.Id.ToString(), $null, [Microsoft.Azure.Commands.Common.Authentication.ShowDialog]::Never, $null, "https://database.windows.net/").AccessToken
    
    # Open connection to SQL DB
    $sqlConnection = New-Object System.Data.SqlClient.SqlConnection('Connection Timeout=7200')
    $sqlConnection.ConnectionString = $ConnectionString;
    $sqlConnection.AccessToken = $accessToken;
    $sqlConnection.Open();
    
    foreach ($user in $users) {  
        $username = $user.name
        $type = $user.type
        
        Write-Host "Creating $username."
        
        $permissionsPrincipalId = Get-AzureADPrincipalId -PrincipalName $username -PrincipalType $type;
        $sid = ConvertTo-Sid -appId $permissionsPrincipalId;
        
        $createUserScript = "IF NOT EXISTS ( SELECT 1 FROM sys.database_principals WHERE name = '$username' ) CREATE USER [$username] WITH DEFAULT_SCHEMA=[dbo], SID=$sid, TYPE=E;"
        Write-Host $createUserScript
        Execute-SqlStatement -Connection $sqlConnection -Statement $createUserScript
        
        foreach ($role in $user.roles) {
            Write-Host "Adding $role role to $username user."

            $alterRoleScript = "sp_addrolemember '$role', '$username'"
            Write-Host $alterRoleScript
            Execute-SqlStatement -Connection $sqlConnection -Statement $alterRoleScript
        }
    }
}