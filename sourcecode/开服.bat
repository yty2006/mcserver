@echo off
color 1b
::Set Value
set MaxRAM=1024M
set MiniRAM=1024M
set Core=forge.jar
echo 端口和地址信息在server.properties中修改(默认端口1234)
echo 退出请在服务器启动后输入exit,防止回档!!!
:START
title @yty(server starting),Press Ctrl+C to stop [MaxRAM: %MaxRAM% MinRAM: %MiniRAM%] server address:127.0.0.1:1234
java -Xmx%MaxRAM% -Xms%MiniRAM% -XX:+AggressiveOpts -jar %Core%
:STOP
title @yty(server stoped) [MaxRAM: %MaxRAM% MINEAM: %MiniRAM%]
ping mc.163.com -n 4 > nul
:GO
goto :Start
