REM  Delete all test generated files

pushd  .

cd ..\testcase
del *.bak
del *.log
del *.stats
del *.tmp

popd  
