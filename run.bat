@echo off
chcp 1251 /f >nul 2>&1
python -V /f >nul 2>&1

IF %ERRORLEVEL% LEQ 1 goto gotpython

echo Не установлен python: https://www.python.org/

goto end

:gotpython

python -c "import docx" /f >nul 2>&1

IF %ERRORLEVEL% LEQ 0 goto end

echo Устанавливаем docx

pip install python-docx

:end

python makerrors.py