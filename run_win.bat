echo off
set time_delay=5
move log.txt log.txt.old
for /r %%f in (*.xml) do (


echo ---------------------- >> log.txt
echo run model: %%f on: GPU >> log.txt

for %%b in (1,2,4,8,16,32,64,128) do (
echo ---------------------- >> log.txt
echo benchmark_app -d GPU -m %%f -b %%b 
echo benchmark_app -d GPU -m %%f -b %%b >> log.txt

benchmark_app -d GPU -m %%f -b %%b >> log.txt
%echo "%ERRORLEVEL%"
%if not "%ERRORLEVEL%" == "0" goto _error
echo Wait %time_delay% sec for system cool down
timeout /t %time_delay%
)

echo ---------------------- >> log.txt
echo run model: %%f on: CPU >> log.txt

for %%b in (1,2,4,8,16,32,64,128) do (
echo ---------------------- >> log.txt
echo benchmark_app -d CPU -m %%f -b %%b 
echo benchmark_app -d CPU -m %%f -b %%b >> log.txt

benchmark_app -d CPU -m %%f -b %%b >> log.txt
%echo "%ERRORLEVEL%"
%if not "%ERRORLEVEL%" == "0" goto _error
echo Wait %time_delay% sec for system cool down
timeout /t %time_delay%
)


)

goto _exit
:_error
echo Got Error!!

:_exit
echo Run finished