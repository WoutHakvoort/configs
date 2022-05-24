# Configs ⚡
This repository contains all kinds of configurations used on my devices.

- [Configs ⚡](#configs-)
  - [1. Windows Terminal, PowerShell & Oh My Posh 💠](#1-windows-terminal-powershell--oh-my-posh-)
    - [1.1. Prerequisites & PowerShell setup](#11-prerequisites--powershell-setup)
  - [1.2. Creating and Setting the PowerShell configuration/profile](#12-creating-and-setting-the-powershell-configurationprofile)
  - [1.3. Oh My Posh](#13-oh-my-posh)


## 1. Windows Terminal, PowerShell & Oh My Posh 💠
The following section contains information on how to pimp my PowerShell using Oh My Posh, cool fonts, colors and more information.

### 1.1. Prerequisites & PowerShell setup
1. Get PowerShell by going into a Command Prompt and run the following command:
```sh
winget install Microsoft.PowerShell
```

2. Get Windows Terminal and set a default shell:
`https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701`
3. Set the default shell to PowerShell, which was installed in the first step.
4. Install the Caskaydi Cove Nerd Font Mono Windows Complete: 
`https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip`
5. Set this font as the default font in the Windows Terminal PowerShell settings


## 1.2. Creating and Setting the PowerShell configuration/profile
1. Execute the following command: 
```sh
if (!(Test-Path -Path $PROFILE) {
  New-Item -ItemType File -Path $PROFILE -Force
}
```
2. Update the contents of the $PROFILE-file with the contents placed in the ps-conf.ps1 file. The ps-conf.ps1 file can be found in the [Git-repository](https://github.com/WoutHakvoort/configs). 

Copy the contents of the ps-conf.ps1 file into the file under $PROFILE. This file can be found under the following path (most of the times):

`C:\Users\<username>\Documents\PowerShell\Microsoft.Powershell_profile.ps1`.

Or you can simply run:

`notepad $profile`


## 1.3. Oh My Posh
Oh My Posh is an amazing little program, which pimps the looks of your PowerShell. We'll use PowerShell's "Install-Module" to install it.

The Oh My Posh documentation can be found here: `https://ohmyposh.dev/docs/`.

1. Run the following command in PowerShell opened in Windows Terminal:
`winget install JanDeDobbeleer.OhMyPosh`
2. Restart Windows Terminal.
3. Place the `oh_my_posh-conf-wh.json` file from the Git-repository into the `C:\dev\configs` folder.
4. Inspect if the $PROFILE-file contains the correct path to the `oh_my_posh-conf-wh.json` file. The first line should be:
```
oh-my-posh --init --shell pwsh --config C:\dev\configs\oh_my_posh-conf-wh.omp.json | Invoke-Expression
```
5. Run the following command in PowerShell opened in Windows Terminal:
`Install-Module -Name Terminal-Icons -Repository PSGallery`
6. Run the following command in PowerShell opened in Windows Terminal:
`Install-Module PSReadLine --AllowPreRelease -Force`
7. Run the following command in PowerShell opened in Windows Terminal:
`PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force`
8. Restart Windows Terminal.

You now have a nicely pimped Windows Terminal.

For more information:
* https://www.hanselman.com/blog/my-ultimate-powershell-prompt-with-oh-my-posh-and-the-windows-terminal
* https://www.hanselman.com/blog/adding-predictive-intellisense-to-my-windows-terminal-powershell-prompt-with-psreadline
* https://www.nerdfonts.com/
* https://ohmyposh.dev/