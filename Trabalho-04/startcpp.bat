@echo off
echo Iniciando as variaveis ambiente para compilar C++ com Visual Studio 

set starting_path=%~dp0

set vsvars32_bat="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"

if ""=="%VCENV%" call %vsvars32_bat%
set VCENV="set"

cd %starting_path%