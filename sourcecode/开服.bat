@echo off
color 1b
::Set Value
set MaxRAM=1024M
set MiniRAM=1024M
set Core=forge.jar
echo �˿ں͵�ַ��Ϣ��server.properties���޸�(Ĭ�϶˿�1234)
echo �˳����ڷ���������������exit,��ֹ�ص�!!!
:START
title @yty(server starting),Press Ctrl+C to stop [MaxRAM: %MaxRAM% MinRAM: %MiniRAM%] server address:127.0.0.1:1234
java -Xmx%MaxRAM% -Xms%MiniRAM% -XX:+AggressiveOpts -jar %Core%
:STOP
title @yty(server stoped) [MaxRAM: %MaxRAM% MINEAM: %MiniRAM%]
ping mc.163.com -n 4 > nul
:GO
goto :Start
