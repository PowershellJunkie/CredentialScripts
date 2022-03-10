# Function to get random characters from a character input parameter from a specified length parameter
function Get-RandomCharacters($length, $characters) {
    $random = 1..$length | ForEach-Object { Get-Random -Maximum $characters.length }
    $private:ofs=""
    return [String]$characters[$random]
}
 
 # Function designed to take an input string and scramble the order
function Scramble-String([string]$inputString){     
    $characterArray = $inputString.ToCharArray()   
    $scrambledStringArray = $characterArray | Get-Random -Count $characterArray.Length     
    $outputString = -join $scrambledStringArray
    return $outputString 
}
 
 # Creation of character array used to generate the password. Each value assigned under length parameter can be adjusted to any positive integer of zero or above
 # The total length of the password is dictated by the integer value assigned in the length parameter. As written, this will create a 12 character password (3 x 4 = 12)
$password = Get-RandomCharacters -length 3 -characters 'abcdefghiklmnoprstuvwxyz'
$password += Get-RandomCharacters -length 3 -characters 'ABCDEFGHKLMNOPRSTUVWXYZ'
$password += Get-RandomCharacters -length 3 -characters '1234567890'
$password += Get-RandomCharacters -length 3 -characters '!"$%&=?@#*'

# Scramble the characters in the array to form a string
$password = Scramble-String $password
 
 # Output the password to the screen
Write-Host $password
