@echo off
set p=%~dp0\..\dsn\%1.dsn
set /p dsn=<%p%
set step=1
if "%2" == "" (set step=5 ) else (set step=%2)
set pp=%cd:\=/%
echo -------------------------------------------------------
echo migration path : %pp%/migration
echo dsn path : %p%
echo dsn : %dsn%
echo step : %step%
echo cert : %migrate_certpath%
echo -------------------------------------------------------
migrate -verbose -path=%pp%/migration -database %dsn% down %step%