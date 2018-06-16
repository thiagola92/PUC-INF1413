@echo off
echo Iniciando as variaveis ambiente para compilar e executar Lua

if ""=="%LUA%" goto inicia
goto sai

:inicia
set LUA="set"
set path=%path%;c:\Program Files\lua

:sai 