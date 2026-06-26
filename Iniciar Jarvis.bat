@echo off
title J.A.R.V.I.S. - Mark XXXIX
color 0B

echo.
echo  ============================================
echo   J.A.R.V.I.S.  ^|  Iniciando sistema...
echo  ============================================
echo.

:: Vai para a pasta do script (garante que os imports funcionem)
cd /d "%~dp0"

:: Tenta localizar o Python automaticamente
where python >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set PYTHON=python
    goto :run
)

:: Fallback: caminho fixo do Python 3.14 instalado no sistema
if exist "c:\Python314\python.exe" (
    set PYTHON=c:\Python314\python.exe
    goto :run
)

echo [ERRO] Python nao encontrado. Verifique a instalacao.
pause
exit /b 1

:run
echo  Usando Python: %PYTHON%
echo  Iniciando main.py...
echo.

%PYTHON% main.py

echo.
echo  J.A.R.V.I.S. encerrado.
pause
