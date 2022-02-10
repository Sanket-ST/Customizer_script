#Function 1- Install Powershell Az Module
Function InstallAzPowerShellModule
install az.Powershell -Y -Force

#Function 2- Install VSCode
Function InstallVSCode
{
    md -Path $env:temp\vscodeinstall -erroraction SilentlyContinue | Out-Null
    $Download = join-Path $env:temp\vscodeinstall vscode_installer.exe
    Invoke-WebRequest 'https://raw.githubusercontent.com/Sanket-ST/InstallVSCode/main/InstallVSCode.ps1' -OutFile $Download
    Invoke-Expression "$Download /silent /install"
}

#Function 3- Install Teams App
Function InstallTeamsModule
{
    Install-Module -Name MicrosoftTeams -Force -AllowClobber
    Connect-MicrosoftTeams
    Get-TeamsApp -Id 6d7e0652-b03d-4ed2-bf86-f1999cecde17
}

#Function 4- Install Git
Function InstallGit
{
    md -Path $env:temp\gitinstall -erroraction SilentlyContinue | Out-Null
    $Download = join-Path $env:temp\gitinstall git_installer.exe 
    Invoke-WebRequest 'https://raw.githubusercontent.com/Sanket-ST/InstallGit.ps1/main/installGit.ps1' -OutFile $Download
    Invoke-Expression "$Download /silent /install" 
}