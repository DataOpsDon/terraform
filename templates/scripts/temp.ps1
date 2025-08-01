$vmSizes=Get-AzComputeResourceSku | where{$_.ResourceType -eq 'virtualMachines' -and $_.Locations.Contains('uksouth')} 

foreach($vmSize in $vmSizes)
{
    foreach($capability in $vmSize.capabilities)
    {
        if($capability.Name -eq 'EncryptionAtHostSupported' -and $capability.Value -eq 'true')
        {
            $vmSize

        }

    }
}
virtualMachines            Standard_B12ms  uksouth {1, 3, 2}
virtualMachines        Standard_B16als_v2  uksouth {2, 1, 3}
virtualMachines         Standard_B16as_v2  uksouth {2, 1, 3}
virtualMachines         Standard_B16ls_v2  uksouth {1, 3, 2}
virtualMachines            Standard_B16ms  uksouth {1, 3, 2}
virtualMachines        Standard_B16pls_v2  uksouth {3, 1, 2}
virtualMachines         Standard_B16ps_v2  uksouth {3, 1, 2}
virtualMachines          Standard_B16s_v2  uksouth {1, 3, 2}
virtualMachines             Standard_B1ls  uksouth {1, 3, 2}
virtualMachines             Standard_B1ms  uksouth {1, 3, 2}
virtualMachines              Standard_B1s  uksouth {1, 3, 2}
virtualMachines            Standard_B20ms  uksouth {1, 3, 2}
virtualMachines         Standard_B2als_v2  uksouth {2, 1, 3}
virtualMachines          Standard_B2as_v2  uksouth {2, 1, 3}
virtualMachines         Standard_B2ats_v2  uksouth {2, 1, 3}
virtualMachines          Standard_B2ls_v2  uksouth {1, 3, 2}
virtualMachines             Standard_B2ms  uksouth {1, 3, 2}
virtualMachines         Standard_B2pls_v2  uksouth {3, 1, 2}
virtualMachines          Standard_B2ps_v2  uksouth {3, 1, 2}
virtualMachines         Standard_B2pts_v2  uksouth {3, 1, 2}
virtualMachines              Standard_B2s  uksouth {1, 3, 2}
virtualMachines           Standard_B2s_v2  uksouth {1, 3, 2}
virtualMachines          Standard_B2ts_v2  uksouth {1, 3, 2}
virtualMachines        Standard_B32als_v2  uksouth {2, 1, 3}
virtualMachines         Standard_B32as_v2  uksouth {2, 1, 3}
virtualMachines         Standard_B32ls_v2  uksouth {1, 3, 2}
virtualMachines          Standard_B32s_v2  uksouth {1, 3, 2}
virtualMachines         Standard_B4als_v2  uksouth {2, 1, 3}
virtualMachines          Standard_B4as_v2  uksouth {2, 1, 3}
virtualMachines          Standard_B4ls_v2  uksouth {1, 3, 2}
virtualMachines             Standard_B4ms  uksouth {1, 3, 2}
virtualMachines         Standard_B4pls_v2  uksouth {3, 1, 2}
virtualMachines          Standard_B4ps_v2  uksouth {3, 1, 2}
virtualMachines           Standard_B4s_v2  uksouth {1, 3, 2}
virtualMachines         Standard_B8als_v2  uksouth {2, 1, 3}
virtualMachines          Standard_B8as_v2  uksouth {2, 1, 3}
virtualMachines          Standard_B8ls_v2  uksouth {1, 3, 2}
virtualMachines             Standard_B8ms  uksouth {1, 3, 2}
virtualMachines         Standard_B8pls_v2  uksouth {3, 1, 2}
virtualMachines          Standard_B8ps_v2  uksouth {3, 1, 2}
virtualMachines           Standard_B8s_v2  uksouth {1, 3, 2}
virtualMachines        Standard_D16ads_v5  uksouth {2, 1, 3}
virtualMachines         Standard_D16as_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D16as_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D16a_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D16ds_v4  uksouth {1, 3, 2}
virtualMachines         Standard_D16ds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D16d_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D16d_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D16lds_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D16ls_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D16pds_v5  uksouth {3, 1, 2}
virtualMachines       Standard_D16plds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D16pls_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D16ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D16s_v3  uksouth {1, 3, 2}
virtualMachines          Standard_D16s_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D16s_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D16_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D2ads_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D2as_v4  uksouth {2, 1, 3}
virtualMachines          Standard_D2as_v5  uksouth {2, 1, 3}
virtualMachines           Standard_D2a_v4  uksouth {2, 1, 3}
virtualMachines          Standard_D2ds_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D2ds_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D2d_v4  uksouth {1, 3, 2}
virtualMachines           Standard_D2d_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D2lds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D2ls_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D2pds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D2plds_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D2pls_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D2ps_v5  uksouth {3, 1, 2}
virtualMachines           Standard_D2s_v3  uksouth {1, 3, 2}
virtualMachines           Standard_D2s_v4  uksouth {1, 3, 2}
virtualMachines           Standard_D2s_v5  uksouth {1, 3, 2}
virtualMachines            Standard_D2_v5  uksouth {1, 3, 2} 
virtualMachines        Standard_D32ads_v5  uksouth {2, 1, 3}
virtualMachines         Standard_D32as_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D32as_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D32a_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D32ds_v4  uksouth {1, 3, 2}
virtualMachines         Standard_D32ds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D32d_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D32d_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D32lds_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D32ls_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D32pds_v5  uksouth {3, 1, 2}
virtualMachines       Standard_D32plds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D32pls_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D32ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D32s_v3  uksouth {1, 3, 2}
virtualMachines          Standard_D32s_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D32s_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D32_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D48ads_v5  uksouth {2, 1, 3}
virtualMachines         Standard_D48as_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D48as_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D48a_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D48ds_v4  uksouth {1, 3, 2}
virtualMachines         Standard_D48ds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D48d_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D48d_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D48lds_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D48ls_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D48pds_v5  uksouth {3, 1, 2}
virtualMachines       Standard_D48plds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D48pls_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D48ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D48s_v3  uksouth {1, 3, 2}
virtualMachines          Standard_D48s_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D48s_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D48_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D4ads_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D4as_v4  uksouth {2, 1, 3}
virtualMachines          Standard_D4as_v5  uksouth {2, 1, 3}
virtualMachines           Standard_D4a_v4  uksouth {2, 1, 3}
virtualMachines          Standard_D4ds_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D4ds_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D4d_v4  uksouth {1, 3, 2}
virtualMachines           Standard_D4d_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D4lds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D4ls_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D4pds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D4plds_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D4pls_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D4ps_v5  uksouth {3, 1, 2}
virtualMachines           Standard_D4s_v3  uksouth {1, 3, 2}
virtualMachines           Standard_D4s_v4  uksouth {1, 3, 2}
virtualMachines           Standard_D4s_v5  uksouth {1, 3, 2}
virtualMachines            Standard_D4_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D64ads_v5  uksouth {2, 1, 3}
virtualMachines         Standard_D64as_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D64as_v5  uksouth {2, 1, 3} 
virtualMachines          Standard_D64a_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D64ds_v4  uksouth {1, 3, 2}
virtualMachines         Standard_D64ds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D64d_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D64d_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D64lds_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D64ls_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D64pds_v5  uksouth {3, 1, 2}
virtualMachines       Standard_D64plds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D64pls_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D64ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D64s_v3  uksouth {1, 3, 2}
virtualMachines          Standard_D64s_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D64s_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D64_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D8ads_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D8as_v4  uksouth {2, 1, 3}
virtualMachines          Standard_D8as_v5  uksouth {2, 1, 3}
virtualMachines           Standard_D8a_v4  uksouth {2, 1, 3}
virtualMachines          Standard_D8ds_v4  uksouth {1, 3, 2}
virtualMachines          Standard_D8ds_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D8d_v4  uksouth {1, 3, 2}
virtualMachines           Standard_D8d_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D8lds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D8ls_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D8pds_v5  uksouth {3, 1, 2}
virtualMachines        Standard_D8plds_v5  uksouth {3, 1, 2}
virtualMachines         Standard_D8pls_v5  uksouth {3, 1, 2}
virtualMachines          Standard_D8ps_v5  uksouth {3, 1, 2}
virtualMachines           Standard_D8s_v3  uksouth {1, 3, 2}
virtualMachines           Standard_D8s_v4  uksouth {1, 3, 2}
virtualMachines           Standard_D8s_v5  uksouth {1, 3, 2}
virtualMachines            Standard_D8_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D96ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_D96as_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D96as_v5  uksouth {2, 1, 3}
virtualMachines          Standard_D96a_v4  uksouth {2, 1, 3}
virtualMachines         Standard_D96ds_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D96d_v5  uksouth {1, 3, 2}
virtualMachines        Standard_D96lds_v5  uksouth {1, 3, 2}
virtualMachines         Standard_D96ls_v5  uksouth {1, 3, 2}
virtualMachines          Standard_D96s_v5  uksouth {1, 3, 2}
virtualMachines           Standard_D96_v5  uksouth {1, 3, 2}
virtualMachines        Standard_DC16ds_v3  uksouth         1
virtualMachines         Standard_DC16s_v3  uksouth         1
virtualMachines         Standard_DC1ds_v3  uksouth         1
virtualMachines          Standard_DC1s_v2  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1
virtualMachines          Standard_DC1s_v3  uksouth         1
virtualMachines        Standard_DC24ds_v3  uksouth         1
virtualMachines         Standard_DC24s_v3  uksouth         1
virtualMachines         Standard_DC2ds_v3  uksouth         1
virtualMachines          Standard_DC2s_v2  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1
virtualMachines          Standard_DC2s_v3  uksouth         1
virtualMachines        Standard_DC32ds_v3  uksouth         1
virtualMachines         Standard_DC32s_v3  uksouth         1
virtualMachines        Standard_DC48ds_v3  uksouth         1
virtualMachines         Standard_DC48s_v3  uksouth         1
virtualMachines         Standard_DC4ds_v3  uksouth         1
virtualMachines          Standard_DC4s_v2  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1
virtualMachines          Standard_DC4s_v3  uksouth         1
virtualMachines         Standard_DC8ds_v3  uksouth         1
virtualMachines          Standard_DC8s_v3  uksouth         1
virtualMachines           Standard_DC8_v2  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1
virtualMachines              Standard_DS1  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines             Standard_DS11  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines        Standard_DS11-1_v2  uksouth {1, 3, 2}
virtualMachines          Standard_DS11_v2  uksouth {1, 3, 2} 
virtualMachines    Standard_DS11_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines             Standard_DS12  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines        Standard_DS12-1_v2  uksouth {1, 3, 2}
virtualMachines        Standard_DS12-2_v2  uksouth {1, 3, 2}
virtualMachines          Standard_DS12_v2  uksouth {1, 3, 2}
virtualMachines    Standard_DS12_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines             Standard_DS13  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines        Standard_DS13-2_v2  uksouth {1, 3, 2}
virtualMachines        Standard_DS13-4_v2  uksouth {1, 3, 2}
virtualMachines          Standard_DS13_v2  uksouth {1, 3, 2}
virtualMachines    Standard_DS13_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines             Standard_DS14  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines        Standard_DS14-4_v2  uksouth {1, 3, 2}
virtualMachines        Standard_DS14-8_v2  uksouth {1, 3, 2}
virtualMachines          Standard_DS14_v2  uksouth {1, 3, 2}
virtualMachines    Standard_DS14_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines          Standard_DS15_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines           Standard_DS1_v2  uksouth {1, 3, 2}
virtualMachines              Standard_DS2  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines           Standard_DS2_v2  uksouth {1, 3, 2}
virtualMachines     Standard_DS2_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines              Standard_DS3  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines           Standard_DS3_v2  uksouth {1, 3, 2}
virtualMachines     Standard_DS3_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines              Standard_DS4  uksouth         1 type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines           Standard_DS4_v2  uksouth {1, 3, 2}
virtualMachines     Standard_DS4_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines           Standard_DS5_v2  uksouth {1, 3, 2}
virtualMachines     Standard_DS5_v2_Promo  uksouth {1, 3, 2} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines       Standard_E104ids_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E104id_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E104is_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E104i_v5  uksouth {2, 1, 3}
virtualMachines      Standard_E112iads_v5  uksouth {1, 3, 2}
virtualMachines       Standard_E112ias_v5  uksouth {1, 3, 2}
virtualMachines      Standard_E112ibds_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E112ibs_v5  uksouth {2, 1, 3}
virtualMachines      Standard_E16-4ads_v5  uksouth {1, 2, 3}
virtualMachines       Standard_E16-4as_v4  uksouth {1, 3, 2}
virtualMachines       Standard_E16-4as_v5  uksouth {1, 2, 3}
virtualMachines       Standard_E16-4ds_v4  uksouth {2, 1, 3}
virtualMachines       Standard_E16-4ds_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E16-4s_v3  uksouth {2, 1, 3}
virtualMachines        Standard_E16-4s_v4  uksouth {2, 1, 3}
virtualMachines        Standard_E16-4s_v5  uksouth {2, 1, 3}
virtualMachines      Standard_E16-8ads_v5  uksouth {1, 2, 3}
virtualMachines       Standard_E16-8as_v4  uksouth {1, 3, 2}
virtualMachines       Standard_E16-8as_v5  uksouth {1, 2, 3}
virtualMachines       Standard_E16-8ds_v4  uksouth {2, 1, 3}
virtualMachines       Standard_E16-8ds_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E16-8s_v3  uksouth {2, 1, 3}
virtualMachines        Standard_E16-8s_v4  uksouth {2, 1, 3}
virtualMachines        Standard_E16-8s_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E16ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_E16as_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E16as_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E16a_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E16bds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E16bs_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E16ds_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E16ds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E16d_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E16d_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E16pds_v5  uksouth {3, 1, 2}
virtualMachines         Standard_E16ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_E16s_v3  uksouth {2, 1, 3}
virtualMachines          Standard_E16s_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E16s_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E16_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E20ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_E20as_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E20as_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E20a_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E20ds_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E20ds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E20d_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E20d_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E20pds_v5  uksouth {3, 1, 2}
virtualMachines         Standard_E20ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_E20s_v3  uksouth {2, 1, 3}
virtualMachines          Standard_E20s_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E20s_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E20_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E2ads_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E2as_v4  uksouth {1, 3, 2}
virtualMachines          Standard_E2as_v5  uksouth {1, 2, 3} 
virtualMachines           Standard_E2a_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E2bds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E2bs_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E2ds_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E2ds_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E2d_v4  uksouth {2, 1, 3}
virtualMachines           Standard_E2d_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E2pds_v5  uksouth {3, 1, 2}
virtualMachines          Standard_E2ps_v5  uksouth {3, 1, 2}
virtualMachines           Standard_E2s_v3  uksouth {2, 1, 3}
virtualMachines           Standard_E2s_v4  uksouth {2, 1, 3}
virtualMachines           Standard_E2s_v5  uksouth {2, 1, 3}
virtualMachines            Standard_E2_v5  uksouth {2, 1, 3}
virtualMachines     Standard_E32-16ads_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E32-16as_v4  uksouth {1, 3, 2}
virtualMachines      Standard_E32-16as_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E32-16ds_v4  uksouth {2, 1, 3}
virtualMachines      Standard_E32-16ds_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E32-16s_v3  uksouth {2, 1, 3}
virtualMachines       Standard_E32-16s_v4  uksouth {2, 1, 3}
virtualMachines       Standard_E32-16s_v5  uksouth {2, 1, 3}
virtualMachines      Standard_E32-8ads_v5  uksouth {1, 2, 3}
virtualMachines       Standard_E32-8as_v4  uksouth {1, 3, 2}
virtualMachines       Standard_E32-8as_v5  uksouth {1, 2, 3}
virtualMachines       Standard_E32-8ds_v4  uksouth {2, 1, 3}
virtualMachines       Standard_E32-8ds_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E32-8s_v3  uksouth {2, 1, 3}
virtualMachines        Standard_E32-8s_v4  uksouth {2, 1, 3}
virtualMachines        Standard_E32-8s_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E32ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_E32as_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E32as_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E32a_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E32bds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E32bs_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E32ds_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E32ds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E32d_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E32d_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E32pds_v5  uksouth {3, 1, 2}
virtualMachines         Standard_E32ps_v5  uksouth {3, 1, 2}
virtualMachines          Standard_E32s_v3  uksouth {2, 1, 3}
virtualMachines          Standard_E32s_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E32s_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E32_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E4-2ads_v5  uksouth {1, 2, 3}
virtualMachines        Standard_E4-2as_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E4-2as_v5  uksouth {1, 2, 3}
virtualMachines        Standard_E4-2ds_v4  uksouth {2, 1, 3}
virtualMachines        Standard_E4-2ds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E4-2s_v3  uksouth {2, 1, 3}
virtualMachines         Standard_E4-2s_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E4-2s_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E48ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_E48as_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E48as_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E48a_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E48bds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E48bs_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E48ds_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E48ds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E48d_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E48d_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E48s_v3  uksouth {2, 1, 3}
virtualMachines          Standard_E48s_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E48s_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E48_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E4ads_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E4as_v4  uksouth {1, 3, 2}
virtualMachines          Standard_E4as_v5  uksouth {1, 2, 3}
virtualMachines           Standard_E4a_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E4bds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E4bs_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E4ds_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E4ds_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E4d_v4  uksouth {2, 1, 3}
virtualMachines           Standard_E4d_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E4pds_v5  uksouth {3, 1, 2}
virtualMachines          Standard_E4ps_v5  uksouth {3, 1, 2}
virtualMachines           Standard_E4s_v3  uksouth {2, 1, 3}
virtualMachines           Standard_E4s_v4  uksouth {2, 1, 3}
virtualMachines           Standard_E4s_v5  uksouth {2, 1, 3}
virtualMachines            Standard_E4_v5  uksouth {2, 1, 3}
virtualMachines     Standard_E64-16ads_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E64-16as_v4  uksouth {1, 3, 2}
virtualMachines      Standard_E64-16as_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E64-16ds_v4  uksouth {2, 1, 3}
virtualMachines      Standard_E64-16ds_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E64-16s_v3  uksouth {2, 1, 3}
virtualMachines       Standard_E64-16s_v4  uksouth {2, 1, 3}
virtualMachines       Standard_E64-16s_v5  uksouth {2, 1, 3} 
virtualMachines     Standard_E64-32ads_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E64-32as_v4  uksouth {1, 3, 2}
virtualMachines      Standard_E64-32as_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E64-32ds_v4  uksouth {2, 1, 3}
virtualMachines      Standard_E64-32ds_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E64-32s_v3  uksouth {2, 1, 3}
virtualMachines       Standard_E64-32s_v4  uksouth {2, 1, 3}
virtualMachines       Standard_E64-32s_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E64ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_E64as_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E64as_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E64a_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E64bds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E64bs_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E64ds_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E64ds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E64d_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E64d_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E64is_v3  uksouth {1, 2, 3}
virtualMachines          Standard_E64s_v3  uksouth {2, 1, 3}
virtualMachines          Standard_E64s_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E64s_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E64_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E8-2ads_v5  uksouth {1, 2, 3}
virtualMachines        Standard_E8-2as_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E8-2as_v5  uksouth {1, 2, 3}
virtualMachines        Standard_E8-2ds_v4  uksouth {2, 1, 3}
virtualMachines        Standard_E8-2ds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E8-2s_v3  uksouth {2, 1, 3}
virtualMachines         Standard_E8-2s_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E8-2s_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E8-4ads_v5  uksouth {1, 2, 3}
virtualMachines        Standard_E8-4as_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E8-4as_v5  uksouth {1, 2, 3}
virtualMachines        Standard_E8-4ds_v4  uksouth {2, 1, 3}
virtualMachines        Standard_E8-4ds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E8-4s_v3  uksouth {2, 1, 3}
virtualMachines         Standard_E8-4s_v4  uksouth {2, 1, 3}
virtualMachines         Standard_E8-4s_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E80ids_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E80is_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E8ads_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E8as_v4  uksouth {1, 3, 2}
virtualMachines          Standard_E8as_v5  uksouth {1, 2, 3}
virtualMachines           Standard_E8a_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E8bds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E8bs_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E8ds_v4  uksouth {2, 1, 3}
virtualMachines          Standard_E8ds_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E8d_v4  uksouth {2, 1, 3}
virtualMachines           Standard_E8d_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E8pds_v5  uksouth {3, 1, 2}
virtualMachines          Standard_E8ps_v5  uksouth {3, 1, 2}
virtualMachines           Standard_E8s_v3  uksouth {2, 1, 3}
virtualMachines           Standard_E8s_v4  uksouth {2, 1, 3}
virtualMachines           Standard_E8s_v5  uksouth {2, 1, 3}
virtualMachines            Standard_E8_v5  uksouth {2, 1, 3}
virtualMachines     Standard_E96-24ads_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E96-24as_v4  uksouth {1, 3, 2}
virtualMachines      Standard_E96-24as_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E96-24ds_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E96-24s_v5  uksouth {2, 1, 3}
virtualMachines     Standard_E96-48ads_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E96-48as_v4  uksouth {1, 3, 2}
virtualMachines      Standard_E96-48as_v5  uksouth {1, 2, 3}
virtualMachines      Standard_E96-48ds_v5  uksouth {2, 1, 3}
virtualMachines       Standard_E96-48s_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E96ads_v5  uksouth {1, 2, 3}
virtualMachines         Standard_E96as_v4  uksouth {1, 3, 2}
virtualMachines         Standard_E96as_v5  uksouth {1, 2, 3}
virtualMachines          Standard_E96a_v4  uksouth {1, 3, 2}
virtualMachines        Standard_E96bds_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E96bs_v5  uksouth {2, 1, 3}
virtualMachines         Standard_E96ds_v5  uksouth {2, 1, 3}
virtualMachines          Standard_E96d_v5  uksouth {2, 1, 3}
virtualMachines        Standard_E96ias_v4  uksouth {3, 1, 2}
virtualMachines          Standard_E96s_v5  uksouth {2, 1, 3}
virtualMachines           Standard_E96_v5  uksouth {2, 1, 3}
virtualMachines             Standard_F16s  uksouth {1, 3, 2}
virtualMachines          Standard_F16s_v2  uksouth {1, 3, 2}
virtualMachines              Standard_F1s  uksouth {1, 3, 2}
virtualMachines              Standard_F2s  uksouth {1, 3, 2}
virtualMachines           Standard_F2s_v2  uksouth {1, 3, 2}
virtualMachines          Standard_F32s_v2  uksouth {1, 3, 2}
virtualMachines          Standard_F48s_v2  uksouth {1, 3, 2}
virtualMachines              Standard_F4s  uksouth {1, 3, 2}
virtualMachines           Standard_F4s_v2  uksouth {1, 3, 2}
virtualMachines          Standard_F64s_v2  uksouth {1, 3, 2}
virtualMachines          Standard_F72s_v2  uksouth {1, 3, 2}
virtualMachines              Standard_F8s  uksouth {1, 3, 2}
virtualMachines           Standard_F8s_v2  uksouth {1, 3, 2}
virtualMachines              Standard_GS1  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines              Standard_GS2  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines              Standard_GS3  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines              Standard_GS4  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines            Standard_GS4-4  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines            Standard_GS4-8  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines              Standard_GS5  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines           Standard_GS5-16  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines            Standard_GS5-8  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines    Standard_HB120-16rs_v3  uksouth         1
virtualMachines    Standard_HB120-32rs_v3  uksouth         1
virtualMachines    Standard_HB120-64rs_v3  uksouth         1
virtualMachines    Standard_HB120-96rs_v3  uksouth         1
virtualMachines       Standard_HB120rs_v3  uksouth         1
virtualMachines         Standard_L16as_v3  uksouth {2, 1, 3}
virtualMachines             Standard_L16s  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines          Standard_L16s_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines          Standard_L16s_v3  uksouth {2, 1, 3}
virtualMachines         Standard_L32as_v3  uksouth {2, 1, 3}
virtualMachines             Standard_L32s  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines          Standard_L32s_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines          Standard_L32s_v3  uksouth {2, 1, 3}
virtualMachines         Standard_L48as_v3  uksouth {2, 1, 3}
virtualMachines          Standard_L48s_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines          Standard_L48s_v3  uksouth {2, 1, 3}
virtualMachines              Standard_L4s  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines         Standard_L64as_v3  uksouth {2, 1, 3}
virtualMachines          Standard_L64s_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines          Standard_L64s_v3  uksouth {2, 1, 3}
virtualMachines         Standard_L80as_v3  uksouth {2, 1, 3}
virtualMachines          Standard_L80s_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines          Standard_L80s_v3  uksouth {2, 1, 3}
virtualMachines          Standard_L8as_v3  uksouth {2, 1, 3}
virtualMachines              Standard_L8s  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines           Standard_L8s_v2  uksouth {1, 3, 2} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines           Standard_L8s_v3  uksouth {2, 1, 3}
virtualMachines             Standard_M128  uksouth    {1, 3}
virtualMachines        Standard_M128-32ms  uksouth    {1, 3}
virtualMachines        Standard_M128-64ms  uksouth    {1, 3}
virtualMachines       Standard_M128dms_v2  uksouth    {1, 3}
virtualMachines        Standard_M128ds_v2  uksouth    {1, 3}
virtualMachines            Standard_M128m  uksouth    {1, 3}
virtualMachines           Standard_M128ms  uksouth    {1, 3}
virtualMachines        Standard_M128ms_v2  uksouth    {1, 3}
virtualMachines            Standard_M128s  uksouth    {1, 3}
virtualMachines         Standard_M128s_v2  uksouth    {1, 3}
virtualMachines          Standard_M16-4ms  uksouth    {1, 3}
virtualMachines          Standard_M16-8ms  uksouth    {1, 3}
virtualMachines            Standard_M16ms  uksouth    {1, 3}
virtualMachines      Standard_M192idms_v2  uksouth    {1, 3}
virtualMachines       Standard_M192ids_v2  uksouth    {1, 3}
virtualMachines       Standard_M192ims_v2  uksouth    {1, 3}
virtualMachines        Standard_M192is_v2  uksouth    {1, 3}
virtualMachines        Standard_M208ms_v2  uksouth    {1, 3}
virtualMachines         Standard_M208s_v2  uksouth    {1, 3}
virtualMachines         Standard_M32-16ms  uksouth    {1, 3}
virtualMachines          Standard_M32-8ms  uksouth    {1, 3}
virtualMachines        Standard_M32dms_v2  uksouth    {1, 3}
virtualMachines            Standard_M32ls  uksouth    {1, 3}
virtualMachines            Standard_M32ms  uksouth    {1, 3}
virtualMachines         Standard_M32ms_v2  uksouth    {1, 3}
virtualMachines            Standard_M32ts  uksouth    {1, 3}
virtualMachines    Standard_M416-208ms_v2  uksouth    {1, 3}
virtualMachines     Standard_M416-208s_v2  uksouth    {1, 3}
virtualMachines        Standard_M416ms_v2  uksouth    {1, 3}
virtualMachines       Standard_M416s_8_v2  uksouth    {1, 3}
virtualMachines         Standard_M416s_v2  uksouth    {1, 3}
virtualMachines              Standard_M64  uksouth    {1, 3}
virtualMachines         Standard_M64-16ms  uksouth    {1, 3}
virtualMachines         Standard_M64-32ms  uksouth    {1, 3}
virtualMachines        Standard_M64dms_v2  uksouth    {1, 3}
virtualMachines         Standard_M64ds_v2  uksouth    {1, 3}
virtualMachines            Standard_M64ls  uksouth    {1, 3}
virtualMachines             Standard_M64m  uksouth    {1, 3}
virtualMachines            Standard_M64ms  uksouth    {1, 3}
virtualMachines         Standard_M64ms_v2  uksouth    {1, 3}
virtualMachines             Standard_M64s  uksouth    {1, 3}
virtualMachines          Standard_M64s_v2  uksouth    {1, 3}
virtualMachines           Standard_M8-2ms  uksouth    {1, 3}
virtualMachines           Standard_M8-4ms  uksouth    {1, 3}
virtualMachines             Standard_M8ms  uksouth    {1, 3}
virtualMachines         Standard_NC12s_v3  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines     Standard_NC16as_T4_v3  uksouth {1, 3, 2}
virtualMachines  Standard_NC24ads_A100_v4  uksouth    {1, 2}
virtualMachines        Standard_NC24rs_v3  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines         Standard_NC24s_v3  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines  Standard_NC48ads_A100_v4  uksouth    {1, 2}
virtualMachines      Standard_NC4as_T4_v3  uksouth {1, 3, 2}
virtualMachines     Standard_NC64as_T4_v3  uksouth {1, 3, 2}
virtualMachines          Standard_NC6s_v3  uksouth         1 {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines      Standard_NC8as_T4_v3  uksouth {1, 3, 2}
virtualMachines  Standard_NC96ads_A100_v4  uksouth    {1, 2}
virtualMachines Standard_ND96amsr_A100_v4  uksouth         1
virtualMachines   Standard_NV12ads_A10_v5  uksouth    {1, 2}
virtualMachines         Standard_NV12s_v2  uksouth    {2, 3} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines         Standard_NV12s_v3  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines        Standard_NV16as_v4  uksouth {1, 3, 2}
virtualMachines   Standard_NV18ads_A10_v5  uksouth    {1, 2}
virtualMachines         Standard_NV24s_v2  uksouth    {2, 3} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines         Standard_NV24s_v3  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines        Standard_NV32as_v4  uksouth {1, 3, 2}
virtualMachines  Standard_NV36adms_A10_v5  uksouth    {1, 2}
virtualMachines   Standard_NV36ads_A10_v5  uksouth    {1, 2}
virtualMachines         Standard_NV48s_v3  uksouth    {2, 3} type: Zone, locations: uksouth, zones: 1, 2, 3
virtualMachines         Standard_NV4as_v4  uksouth {1, 3, 2}
virtualMachines    Standard_NV6ads_A10_v5  uksouth    {1, 2}
virtualMachines          Standard_NV6s_v2  uksouth    {2, 3} {type: Location, locations: uksouth, type: Zone, locations: uksouth, zones: 1, 2, 3}
virtualMachines   Standard_NV72ads_A10_v5  uksouth    {1, 2} 
virtualMachines         Standard_NV8as_v4  uksouth {1, 3, 2}
