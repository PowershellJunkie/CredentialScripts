$plainpass = "Giveblood!"
$Password = $plainpass | ConvertTo-SecureString -AsPlainText -Force
New-LocalUser -Name "InsideUser" -Description "TBC Local user account" -Password $Password -AccountNeverExpires -UserMayNotChangePassword