﻿$GroupPolicyMissingPermissions = @{
    Enable = $true
    Source = @{
        Name           = "Group Policy Missing Permissions"
        Data           = {
            Get-WinADGPOMissingPermissions -Domain $Domain
        }
        ExpectedOutput = $false
        Details        = [ordered] @{
            Area             = ''
            Explanation      = "Group Policy permissions should always have Authenticated Users and Domain Computers gropup"
            Recommendation   = 'Do not remove Authenticated Users, Domain Computers from Group Policies.'
            RiskLevel        = 10
            RecommendedLinks = @(
                'https://secureinfra.blog/2018/12/31/most-common-mistakes-in-active-directory-and-domain-services-part-1/'
                'https://support.microsoft.com/en-us/help/3163622/ms16-072-security-update-for-group-policy-june-14-2016'
            )
        }
    }
}