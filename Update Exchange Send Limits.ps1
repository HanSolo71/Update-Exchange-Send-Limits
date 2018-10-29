#Get users from text document
#$users = get-content “Script Location"

#Get Users from OU
$users = Get-ADUser -Filter * -SearchBase "OU=Users,DC=Contoso,DC=COM" | Select UserPrincipalName
foreach ($user in $users){
Set-Mailbox -Identity $username -UseDatabaseQuotaDefaults $true -MaxReceiveSize "Unlimited" -MaxSendSize "Unlimited"
}
