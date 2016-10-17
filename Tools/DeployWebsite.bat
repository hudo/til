CALL SystemToolDefinitions.bat

REM %1 Destination server username
REM %2 Destination server password
REM %3 Project root folder

%MSDeploy% -source:contentPath='%3/Book/_book' ^
    -dest:contentPath="c:\inetpub\til.hudosvibe.net",computerName="https://til.hudosvibe.net:8172/msdeploy.axd",userName="%1",password="%2",includeAcls='False',authtype='Basic' ^
    -verb:sync ^
    -allowUntrusted=True