@echo off
:: Obtém o diretório atual do prompt de comando
set "currentDir=%cd%"

:: Navega até o diretório do projeto
cd /d "%currentDir%"

:: Executa o comando brcc32 para compilar o arquivo .rc
brcc32 config_languages.rc
