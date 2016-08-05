  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared" /v "RootDir" /t REG_SZ /d "%APPDATA%\ModelMakerTools\Shared" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\PredefinedTypes" /v "Object Pascal" /t REG_SZ /d "Integer,LongInt,LongWord,Boolean,Extended,Double,Char,Variant,string,WideString,TRect,TList,TStrings,TStringList" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\PredefinedTypes" /v "C#" /t REG_SZ /d "int,bool,string,char,uint,long,ulong,sbyte,byte,short,ushort,decimal,float,double" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "IUnknown Implementation" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\IUnknown.pas\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Array Property" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\ArrayProp_List.pas\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Begin/EndUpdate" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\BeginEndUpdate.pas\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Singleton" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\Singleton.pas\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Reference Count" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\ReferenceCount.pas\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Observer" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\Observer.pas\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Array List Indexer" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\Indexer.cs\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "BeginUpdate/EndUpdate" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\BeginEndUpdate.cs\",Wizards" /f
  reg add "HKEY_CURRENT_USER\Software\ModelMaker\Shared\Templates" /v "Simple Singleton" /t REG_SZ /d "\"%APPDATA%\ModelMakerTools\Shared\Templates\Singleton.cs\",Wizards" /f
