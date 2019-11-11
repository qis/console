# Console
Wrapper for `cmd.exe` and `bash.exe` based on [mintty/wsltty](https://github.com/mintty/wsltty).

## Install
1. Extract into `C:\Program Files (x86)\Console`.
2. Install DejaVu Sans Mono NF fonts located in [usr/share/fonts](usr/share/fonts).
3. Right-click on [Console.lnk](Console.lnk) and select "Pin to Start".
4. Right-click on [Terminal.lnk](Terminal.lnk) and select "Pin to Start".
5. Execute [register.cmd](register.cmd).

## Settings
To use the same settings for all `cmd.exe` windows, execute [default.cmd](default.cmd) as a user.

Set the User environment variable `PROMPT`.

```
$e[32m%USERNAME%$e[0m@$e[32m%COMPUTERNAME%$e[0m$s$e[34m$p$e[0m$s
```

NOTE: Either replace `%USERNAME%` in this string or set the environment variable `USERNAME`.
