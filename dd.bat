@echo off
    Echo 正在检查系统中是否存在木马
    Netstat -a -n >jc.txt
    Find jc.txt "7614">nul
    If %errorlevel%==0(
    Echo.
    Echo 系统中存在木马
    Goto end
    )
    Echo.
    Echo 系统中未发现木马
    :end
    Del /q jc.txt>nul