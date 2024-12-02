#Define the OneDrive folder name, in a business setting this would be consistently the same (ex. OneDrive - Company A), if you have OneDrive setup see naming in your user profile folder.
$OneDriveName = "OneDrive - Your Company Name"
#Define a list of Computer Name Abbreviations.  Shortcuts can be duplicated and appended with the computer name.  For example the computer name being "BC-124512" it duplicates the shortcut like "Example Shortcut Name-BC-124512.url" if we find -AP- in the name we remove it as it is a known abbreviation.
$ComputerAbbreviations = "-BC-","-FI-","-BB-"

#This retrieves all the .URL and .LNK files in the users OneDrive Desktop folder
$Shortcuts = Get-ChildItem -Path "$ENV:USERPROFILE\$OneDriveName\Desktop" -Recurse | Where-Object { ($_.Name -match '.URL' -or $_.Name -match '.LNK') }

foreach ($s in $Shortcuts)
{
	If ($s.Name -match " - Copy")
	{
		Remove-Item -Path $s.FullName -Force
	}
	foreach ($C in $ComputerAbbreviations)
	{
		If ($s.Name -match "$C")
		{
			Remove-Item -Path $s.FullName -Force
		}
	}
}
