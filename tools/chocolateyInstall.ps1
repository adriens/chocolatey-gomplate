$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ErrorActionPreference = 'Stop';



$packageArgs = @{
  packageName   = 'gomplate'
  fileType      = 'exe'
  softwareName  = 'gomplate*'
  file          = "$toolsDir\gomplate.exe"
  silentArgs    = "--version"
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools

$gomplate_exe = Join-Path $package '/tools/gomplate.exe'

Install-BinFile -Name 'gomplate' -Path $gomplate_exe
