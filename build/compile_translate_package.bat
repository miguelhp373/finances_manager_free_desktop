@echo off
:: Obt�m o diret�rio atual do prompt de comando
set "currentDir=%cd%"

:: Navega at� o diret�rio do projeto
cd /d "%currentDir%"

:: Executa o comando brcc32 para compilar o arquivo .rc
brcc32 config_languages.rc
