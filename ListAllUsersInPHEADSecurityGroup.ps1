## list all ad users in a specified AD Security group
## written by Michelle Mann, 7/12/2016


## this script assumes the AD security group is in the PHE domain

$adg=Get-ADGroup -Filter {Name -eq "global.hp.fes"}
#Get-ADGroupMember -Identity $adg | select SamAccountName > c:\temp\ListAllUsersInPHEADSecurityGroup.txt
Get-ADGroupMember -Identity $adg | Get-ADUser | select Name, Enabled, SamAccountName, UserPrincipalName, DistinguishedName | Export-Csv c:\temp\ListAllUsersInPHEADSecurityGroup.csv
