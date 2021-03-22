$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ErrorActionPreference = 'Stop';



$packageArgs = @{
  packageName   = 'ytt'
  fileType      = 'exe'
  softwareName  = 'k14s-ytt*'
  file          = "$toolsDir\ytt.exe"
  silentArgs    = "--help"
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools

$ytt_exe = Join-Path $package '/tools/ytt.exe'

Install-BinFile -Name 'ytt' -Path $ytt_exe
