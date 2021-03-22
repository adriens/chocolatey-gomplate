$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) 'content'
$bat = Join-Path $content 'gomplate.exe'

Uninstall-BinFile `
  -Name 'gomplate.exe' `
  -Path $bat