@ECHO  OFF
REM  Generate make script files
REM     Sintax   GenMake <CompositionFileName>

pushd  .

if ""=="%1" goto error

cd ..\comp
..\tools\gmake /c%1 /p..\tools\ms-cpp.parm
goto exit

:error
echo Missing composition script file name

:exit
popd
