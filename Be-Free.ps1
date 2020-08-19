function Be-Free {
<#
.SYNOPSIS
Free yourself of pesky registry restrictions. 
Author: Jean-François Maes
Required Dependencies: None
Optional Dependencies: None

.DESCRIPTION
Sometimes you just gotta break free from the registry bonds. In some environments registry policies have been set to make your life miserable.
If you are local admin, this script will solve all your problems! You are welcome world!


.PARAMETER Location
Option parameter to specify the location of the BeFree.reg file. if this param is blank, will search for the regfile at same location as this script.

.EXAMPLE
Be-Free -Location C:\Temp\BeFree.reg
#>

 [CmdletBinding()]
    Param (
        [String]
        $Path = ".\BeFree.reg")

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name "DisableRegistryTools" -Value 0
$regimport = reg import $Path

}
