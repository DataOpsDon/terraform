param(
  [string] $SynapseWorkspaceName = "synw-acl-dp-dev-weu-01",
  [string] $AdministratorsGroupObjectId = "7cf93d3d-d8d0-44f8-9ec2-2da1a3b83fad"
)

$ErrorActionPreference = "Continue"

$roleName = "Synapse Administrator"
$result = az synapse role assignment create --workspace-name $SynapseWorkspaceName --role $roleName --assignee $AdministratorsGroupObjectId 2>&1 

if (!$?) {
  if ($result -like "*already exists*") {
    Write-Warning "$roleName role assignment for $AdministratorsGroupObjectId already exists."
    exit 0
  }
  else {
    Write-Error "An unexpected error occurred when adding the role assignment."
  }
}
else {
  Write-Host "$roleName role assignment created for $AdministratorsGroupObjectId"
}
