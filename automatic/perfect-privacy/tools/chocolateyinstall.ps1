﻿$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "perfect-privacyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'perfect-privacy'
  fileType       = 'exe'
  url            = 'https://www.perfect-privacy.com/downloads_public/Perfect-Privacy-VPN_Setup.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'perfect-privacy*'
  checksum       = 'ee29d3bbba9906a4b8afb1baea212fceb36c29d107355428edff840eb2ad7e97'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs