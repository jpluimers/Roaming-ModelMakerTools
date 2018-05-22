setlocal

:: in case path in the registry found, set default
set mmxPath=%ProgramFiles(x86)%\Raabe Software\MMX\13\

:: pick installation path from the registry
:: in the loop, %%c is REG_SZ and %%d the path

for /f "usebackq tokens=2* delims= " %%c in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Raabe Software\MMX\13.0" /v InstallDir`) do (
  set mmxPath=%%d
)

:: install for any Delphi version regardless if it exists:
reg add "HKEY_CURRENT_USER\Software\Borland\Delphi\7.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%midexd7.dll
reg add "HKEY_CURRENT_USER\Software\Borland\BDS\5.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds5.dll" /f
reg add "HKEY_CURRENT_USER\Software\CodeGear\BDS\6.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds6.dll" /f
reg add "HKEY_CURRENT_USER\Software\CodeGear\BDS\7.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds7.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\8.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds8.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\9.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds9.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\10.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds10.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\11.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds11.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\12.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds12.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\14.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds14.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\15.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds15.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\16.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds16.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\17.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds17.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\18.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds18.dll" /f
reg add "HKEY_CURRENT_USER\Software\Embarcadero\BDS\19.0\Experts" /v MidexExpert /t REG_SZ /d "%mmxPath%mmx_bds19.dll" /f

:end

endlocal