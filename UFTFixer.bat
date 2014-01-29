@echo off
@echo ########################################
@echo UFT Fixer
@echo ########################################
@echo.
@echo Cleaning output folder...
rm -rf .\output\*
@echo.
@echo Extracting files from %1
.\bin\unzip %1 -d .\output\%~n1
@echo.
@echo Adjusting files to lowercase...
for /f %%f in ('dir ".\output\%~n1" /b/a-d/s') do (
	@echo %%f
	.\bin\LwrCase "%%f"
)
@echo.
@echo File %1 has been extracted and files fixed!
@echo done.
@echo.