@echo off

:Run
cls

javac -version
if errorlevel 1 (
	echo ��Ҫ��װJDK���ܱ�������java�ļ�
	goto Pause
)

javac -encoding utf-8 *.java

if not exist "com/github/xiangyuecn/rsajava" md "com/github/xiangyuecn/rsajava"
move *.class com/github/xiangyuecn/rsajava > nul

java com.github.xiangyuecn.rsajava.Test

set /p step=�Ƿ���������(y):
if "%step%"=="y" goto Run
goto End

:Pause
pause
:End