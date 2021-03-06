### Microsoft Learning course 50331D
### Install Python on the local computer. 
### Must be run from an Administrator Console
### Create Variables
Set-StrictMode -Version 2.0
$WorkFolder = "c:\labfiles.50331d\"
Set-Location $WorkFolder

### Install Python 3.7.0
# Use TLS 1.2 for site security
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$PythonDownloadFile = $WorkFolder + "python-3.7.0-amd64.exe"
$PythonInstallFolder = "C:\Program Files\Python370"
$PythonURL = "https://www.python.org/ftp/python/3.7.0/python-3.7.0-amd64.exe"
(New-Object System.Net.WebClient).DownloadFile($PythonURL, $PythonDownloadFile) 
&$PythonDownloadFile /Passive InstallAllUsers=1 PrependPath=1 Include_Test=0 TargetDir=$PythonInstallFolder

### Upgrade pip.  A new PowerShell Administrator console should be opened to run this command.
python -m pip install --upgrade pip

### Install Python modules using pip.  A new PowerShell Administrator console should be opened to run this command.
pip install --upgrade pandas, pandas_datareader, scipy, matplotlib, pyodbc, pycountry, azure, azure-cli

### Verify installed modules
pip list

### Install Bash on Windows 
# Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
