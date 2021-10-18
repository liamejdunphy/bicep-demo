az bicep decompile -f $PSScriptRoot/arm/azuredeploy.json

Move-Item -Path $PSScriptRoot/arm/azuredeploy.bicep -Destination $PSScriptRoot/bicep/main.bicep