@echo off

set superior_dir=%1

for /f  "eol=; tokens=2,2 delims==" %%i in ('findstr /i "^cn_internal_port" %superior_dir%\conf\iotdb-confignode.properties') do (  set cn_internal_port=%%i )
for /f  "eol=; tokens=2,2 delims==" %%i in ('findstr /i "^cn_internal_address" %superior_dir%\conf\iotdb-confignode.properties') do (  set cn_internal_address=%%i )
for /f  "eol=; tokens=2,2 delims==" %%i in ('findstr /i "^dn_rpc_port" %superior_dir%\conf\iotdb-datanode.properties') do (  set dn_rpc_port=%%i )
for /f  "eol=; tokens=2,2 delims==" %%i in ('findstr /i "^dn_rpc_address" %superior_dir%\conf\iotdb-datanode.properties') do (  set dn_rpc_address=%%i )
