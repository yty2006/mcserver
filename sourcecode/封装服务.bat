::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJFaQ/EciFB1VWg2BM2X0D7YTiA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJGKp11E1Og1RXjm+ubtbjnb5bhQWagBG7EgFUYI=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title 封装服务向导
color 1b
echo mc server简易封装服务向导
Echo 当前位置: %cd%
echo 1.封装服务
echo 2.卸载服务
set /p input=请输入数字(1/2):
if "%input%"=="1" goto install
if "%input%"=="2" goto uninstall
if not "%input%"=="1" (if not %input%=="2" goto err)
:install
nssm install [mcserver] %cd%\开服.exe
echo 服务已安装(未启动,默认开机自启),可以在服务列表中管理
pause
exit

:uninstall
nssm remove [mcserver] confirm
echo 服务已移除
pause
exit

:err
echo 输入有误
pause
exit