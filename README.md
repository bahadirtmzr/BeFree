# BeFree
GPO's are a pain in the ass, luckily, when you are localadmin, you can mess them up by resetting your registry to the appropriate settings!
This project is aimed to help getting rid of the most annoying gpo's by automatically enabling regedit again and importing a reg export that resets values back to allow instead of deny.

## Did I forget annoying policies? Contribute!
Find the corresponding registry keys for annoying stuff here
https://getadmx.com/
https://gpsearch.azurewebsites.net/
Edit the BeFree.reg file to include anything I might have overlooked! 
Submit a PR :) 

## Usage
Download the .reg file and the ps1 <br>
Run PowerShell as Admin <br>
Import-Module Be-Free.ps1 <br>
Be-Free

The Be-Free function also accepts a -Path command so you can specify the location of BeFree.reg, by default it will check the location from where your script was launched.
