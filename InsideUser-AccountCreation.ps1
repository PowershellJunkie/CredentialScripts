$plainpass = "<yourpasswordhere>"
$Password = $plainpass | ConvertTo-SecureString -AsPlainText -Force
New-LocalUser -Name "YourInsideUser" -Description "YourLocalUserAccount" -Password $Password -AccountNeverExpires -UserMayNotChangePassword
