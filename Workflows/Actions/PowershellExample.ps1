$console = $host.ui.rawui
$console.backgroundcolor = "black"
$console.foregroundcolor = "green"
Set-ConsoleFont 20

$Title="Mr"
$Name="Andrew Jones"
$DOB="10/09/1975"
$Address="14 Hilltop Drive, Preston, Lancashire, PR5 9HG"
$Sex="Male"
$Status="Married"
$Telephone="0123456789"

$Policy=""
$CoverType="Comprehensive"
$VehicleUse="Pleasure"
$DrivingExperience="27"
$NCB="10"
$PreserveNCB="Yes"
$Excess="200"
$CoverStart="01/12/2018"
$VehicleType="Private Car"
$VehicleMake="Ford"
$VehicleModel="Ka"
$VehicleReg="WW01 0WW"
$VehicleEngine="1400"
$VehicleBody="Hatchback"
$VehicleAlarm="Yes"
$VehicleFinance="No"
$VehicleModified="No"

$BankAccountNum=""
$BankCode="123456"
$AccountName="Andrews Current Account"
$OverdraftLimit="500"

function Show-Menu
{
     cls
	 Show-Header
	 $console.foregroundcolor = "white"
     Write-Host ""
	 Write-Host ""
	 Write-Host ""
     Write-Host "          1: Account details."
	 Write-Host ""
     Write-Host "          2: Policy details"
	 Write-Host ""
     Write-Host "          3: Banking"
	 Write-Host ""
	 Write-Host "          4: Markets"
	 Write-Host ""
	 Write-Host ""
	 $console.foregroundcolor = "red"
     Write-Host "          Q: Press 'Q' to quit."
	 Write-Host ""
	 $console.foregroundcolor = "green"
	 Show-Footer
}

function Show-Header
{
	Write-Host "================================================================================"
	Write-Host ""
    Write-Host "           XXX                         "                          
    Write-Host "       XXXXX XXXXX                      UiBANK MAINFRAME SYSTEM v2.0"             
    Write-Host "      XXXXXXXXXXXXX          "      
    Write-Host "        I I I I I                       DDM Development Systems" 
    Write-Host "        I I I I I                       November 2020" 
    Write-Host "        I I I I I            " 
    Write-Host "        I I I I I                       Financial Services:" 
    Write-Host "       XXXXXXXXXXX                      - Insurance"
	Write-Host "      XXXXXXXXXXXXX                     - Banking"
	Write-Host "       U i B A N K                      - Markets"
	Write-Host ""
	Write-Host "================================================================================"
 }
 
 function Show-Footer
 {
 	Write-Host "________________________________________________________________________________"
}

function Show-Account
{
	cls
	Show-Header
	''
	'     ACCOUNT DETAILS'
	''
	$Accnt = Read-Host -Prompt '     ACCOUNT NUMBER'
	''
	Write-Host "          Title:     $Title"
	Write-Host "          Name:      $Name"
	Write-Host "          DOB:       $DOB"
	Write-Host "          Address:   $Address"
	Write-Host "          Sex:       $Sex"
	Write-Host "          Status:    $Status"
	Write-Host "          Telephone: $Telephone"
	$Policy="13151719"
	Write-Host "          Policy:    $Policy"
	Show-Footer
	'1: Edit Details.  2: View Policy.  3. Return to previous menu' 
	$Selection = Read-Host -Prompt 'Selection'
	switch ($Selection)
	{
		'1' { 
			cls
			''
			'     EDIT ACCOUNT DETAILS'
			$Input=Read-Host -Prompt "     New Title (or blank to keep '$Title')"
			if ($Input -ne "") {$Title=$Input}
			$Input=Read-Host -Prompt "     New Name (or blank to keep '$Name')"
			if ($Input -ne "") {$Name=$Input}
			$Input=Read-Host -Prompt "     New DOB (or blank to keep $DOB)"
			if ($Input -ne "") {$DOB=$Input}
			$Input=Read-Host -Prompt "     New Address (or blank to keep '$Address')"
			if ($Input -ne "") {$Address=$Input}
			$Input=Read-Host -Prompt "     New Sex (or blank to keep '$Sex')"
			if ($Input -ne "") {$Sex=$Input}
			$Input=Read-Host -Prompt "     New Status (or blank to keep '$Status')"
			if ($Input -ne "") {$Status=$Input}
			$Input=Read-Host -Prompt "     New Telephone (or blank to keep $Telephone)"
			if ($Input -ne "") {$Telephone=$Input}
			Write-Host ""
			Write-Host "     Account details:"
			Write-Host "          Title:     $Title"
			Write-Host "          Name:      $Name"
			Write-Host "          DOB:       $DOB"
			Write-Host "          Address:   $Address"
			Write-Host "          Policy:    $Policy"
			Write-Host "          Sex:       $Sex"
			Write-Host "          Status:    $Status"
			Write-Host "          Telephone: $Telephone"
			Show-Footer
		}
		'2' {
			Show-Policy
		}
		'3' {
		}
	}
}

function Show-Policy
{
	cls
	Show-Header
	''
	'     POLICY DETAILS'
	''
	if ($Policy -eq "") {$Policy = Read-Host -Prompt '     POLICY NUMBER'}
	Write-Host "          Policy #:     $Policy"
	Write-Host "          Cover Type:   $CoverType			Vehicle Use:  $VehicleUse"
	Write-Host "          Experience:   $DrivingExperience"
	Write-Host "          NCB:          $NCB				Protect NCB:  $PreserveNCB"
	Write-Host "          Excess:       $Excess				Cover Start:  $CoverStart"
	Write-Host "          Vehicle Type: $VehicleType			Make:	      $VehicleMake"
	Write-Host "          Model:        $VehicleModel				Registration: $VehicleReg"
	Write-Host "          Engine Size:  $VehicleEngine				Body Type:    $VehicleBody"
	Write-Host "          Alarmed:      $VehicleAlarm				Financed:     $VehicleFinance"
	Write-Host "          Modified:     $VehicleModified"
	Show-Footer
}


function Show-Banking
{
	cls
	Show-Header
	''
	'     Banking'
	''
	if ($BankAccountNum -eq "") {$BankAccountNum = Read-Host -Prompt '     ACCOUNT NUMBER'}
	Write-Host "          Account #:    $BankAccountNum         Account Name: $AccountName"
	Write-Host "          Sort Code:    $BankCode           Overdraft:    £$OverdraftLimit"
    ''
    ''
	Show-Footer
	'1: Edit Details.  2: View transactions  3. Close Account' 
	$Selection = Read-Host -Prompt 'Selection'
	switch ($Selection)
	{
		'1' { 
			cls
	        Show-Header
			''
			'     EDIT ACCOUNT DETAILS'
			$Input=Read-Host -Prompt "     New Name (or blank to keep '$AccountName')"
			if ($Input -ne "") {$AccountName=$Input}
			$Input=Read-Host -Prompt "     Bank Sort code (or blank to keep $BankCode)"
			if ($Input -ne "") {$BankCode=$Input}
			$Input=Read-Host -Prompt "     Overdraft Limit (or blank to keep £$OverdraftLimit)"
			if ($Input -ne "") {$OverdraftLimit=$Input}
			Write-Host ""
			Write-Host "     Account details:"
            Write-Host "          Number:    $BankAccountNum"
			Write-Host "          Name:      $AccountName"
			Write-Host "          Sort Code: $BankCode"
			Write-Host "          Overdraft: £$OverdraftLimit"
			Show-Footer
		}
		'2' {
			'Tranactions in here'
		}
		'3' {

		}
	}
}

do
{
     Show-Menu
     $input = Read-Host "Please make a selection" 
     switch ($input)
     {
           '1' {
                Show-Account
           } '2' {
				Show-Policy
           } '3' {
                cls
                Show-Banking
		   } '4' {
				cls
				'You chose option #4'
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')