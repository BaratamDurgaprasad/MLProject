@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "c:\ProgramData\anaconda3\condabin\conda.bat" activate "d:\projects\MLProject\venv"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@d:\projects\MLProject\venv\python.exe -Wi -m compileall -q -l -i C:\Users\DURGAP~1\AppData\Local\Temp\tmp5mmu8yb4 -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
