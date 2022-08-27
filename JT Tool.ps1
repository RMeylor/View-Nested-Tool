 ## SG-Technology Services-Service Desk
$ErrorActionPreference = 'SilentlyContinue'
$selection = Read-host -prompt "What SG do you want to veiw?"

$SG = Get-ADGroupMember -Identity $selection | Select-Object Name | Sort-Object Name


 for($i = 0; $i -lt $SG.count; $i++){
            $SG[$i]
            $JT = Get-ADGroupMember -Identity $SG[$i].name | Select-Object Name | Sort-Object Name
        }