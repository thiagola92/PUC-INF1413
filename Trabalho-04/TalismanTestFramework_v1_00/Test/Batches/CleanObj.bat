REM  Delete all compiler generated files

pushd  .

cd ..\batches
del *.bak

cd ..\bsw
del *.bak
del *.bkp

cd ..\comp
del *.bak

cd ..\obj
del *.bak
del *.obj
del *.exe

cd ..\sources
del *.bak
del *.err

popd  
