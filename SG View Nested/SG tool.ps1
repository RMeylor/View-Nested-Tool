$selection = Read-host -prompt "What SG do you want to veiw?"

$SG = Get-ADGroupMember -Identity $selection | Select-Object Name | Sort-Object Name

for($i = 0; $i -lt $SG.count; $i++){
            Write-Host "$($i): $($SG[$i].SamAccountName) | $($SG[$i].Name)"
        }
        $selection = Read-Host -Prompt "Enter the Next group to navigate through"
        $DriveName = $SG[$selection].name
        
Get-ADGroupMember -Identity $DriveName | Select-Object Name | Sort-Object Name      
        
   ## SG-Technology Services-Service Desk