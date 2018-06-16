@echo off
echo Executando startcpp.bat e startlua.bat

::set batches_folder="TalismanTestFramework_v1_00\Test\Batches"
set batches_folder="INF1413_2018-1_Trabalho-4\batches"

call startlua
call startcpp

cd %batches_folder%

set TALISMAN= -config:talisman

