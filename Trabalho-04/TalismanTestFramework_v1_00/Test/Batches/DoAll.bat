REM Realiza todos os testes

call startcpp
call startlua

SET TALISMAN= -config:talisman
set TALISTEST= -abc: x y z -x: 123

if -%1-==-- goto clean
if %1==/P goto clean
if %1==/a goto clean
if %1==/A goto clean
if %1==/c call cleanObj
if %1==/t call cleanTest
goto doit
:clean

call cleanAll
:doit
call TestSuite TestFramework %1 

