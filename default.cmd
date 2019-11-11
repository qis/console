@echo off

set __cmd_reg_paths=HKCU\Console
set __cmd_reg_paths=%__cmd_reg_paths%,HKCU\Console\%%SystemRoot%%_System32_cmd.exe

for %%i in (%__cmd_reg_paths%) do (
  reg add "%%i" /v FaceName /d "DejaVu LGC Sans Mono" /f
  reg add "%%i" /v FontSize /t REG_DWORD /d 0x000e0000 /f
  reg add "%%i" /v FontFamily /t REG_DWORD /d 0x00000036 /f
  reg add "%%i" /v FontWeight /t REG_DWORD /d 0x00000190 /f
  reg add "%%i" /v CursorType /t REG_DWORD /d 0x00000000 /f
  reg add "%%i" /v ColorTable00 /t REG_DWORD /d 0x001e1e1e /f
  reg add "%%i" /v ColorTable01 /t REG_DWORD /d 0x00f6aa5d /f
  reg add "%%i" /v ColorTable02 /t REG_DWORD /d 0x0069e9b2 /f
  reg add "%%i" /v ColorTable03 /t REG_DWORD /d 0x00f7ff82 /f
  reg add "%%i" /v ColorTable04 /t REG_DWORD /d 0x005a61ff /f
  reg add "%%i" /v ColorTable05 /t REG_DWORD /d 0x00ff6ae9 /f
  reg add "%%i" /v ColorTable06 /t REG_DWORD /d 0x009cd9eb /f
  reg add "%%i" /v ColorTable07 /t REG_DWORD /d 0x00dcdcdc /f
  reg add "%%i" /v ColorTable08 /t REG_DWORD /d 0x00787878 /f
  reg add "%%i" /v ColorTable09 /t REG_DWORD /d 0x00ffc8a5 /f
  reg add "%%i" /v ColorTable10 /t REG_DWORD /d 0x0094f8dd /f
  reg add "%%i" /v ColorTable11 /t REG_DWORD /d 0x00f9ffb7 /f
  reg add "%%i" /v ColorTable12 /t REG_DWORD /d 0x00808cf5 /f
  reg add "%%i" /v ColorTable13 /t REG_DWORD /d 0x00ffaadd /f
  reg add "%%i" /v ColorTable14 /t REG_DWORD /d 0x00b2e5ee /f
  reg add "%%i" /v ColorTable15 /t REG_DWORD /d 0x00ffffff /f
  reg add "%%i" /v InterceptCopyPaste /t REG_DWORD /d 0x00000000 /f
  reg add "%%i" /v ScreenBufferSize /t REG_DWORD /d 0x23290096 /f
  reg add "%%i" /v WindowSize /t REG_DWORD /d 0x002d0096 /f
)

set __cmd_reg_paths=
