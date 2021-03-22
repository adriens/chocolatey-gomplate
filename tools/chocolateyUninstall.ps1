$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) 'content'
$bat = Join-Path $content 'ytt.exe'

Uninstall-BinFile `
  -Name 'ytt.exe' `
  -Path $bat
