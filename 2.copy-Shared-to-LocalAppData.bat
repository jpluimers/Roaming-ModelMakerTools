:: Assume the batch file directory is where the template is from, so "%~dp0" has that directory with a terminating backslash

  mkdir "%APPDATA%\Raabe Software\MMX Code Explorer"
  mkdir "%APPDATA%\Raabe Software\Shared"

  xcopy /s /e /y "%~dp0MMX Code Explorer" "%APPDATA%\Raabe Software\MMX Code Explorer"
  xcopy /s /e /y "%~dp0Shared" "%APPDATA%\Raabe Software\Shared"
