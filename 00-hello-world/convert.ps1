az bicep decompile -f $PSScriptRoot/arm/azuredeploy.json

Move-Item -Path $PSScriptRoot/arm/azuredeploy.bicep -Destination $PSScriptRoot/bicep/main.bicep -Force
Copy-Item -Path $PSScriptRoot/arm/azuredeploy.parameters.jsonc -Destination $PSScriptRoot/bicep/azuredeploy.parameters.jsonc
Copy-Item -Path $PSScriptRoot/arm/deploy.ps1 -Destination $PSScriptRoot/bicep/deploy.ps1

((Get-Content -Path $PSScriptRoot/bicep/deploy.ps1 -Raw) -replace './azuredeploy.json','./main.bicep') | Set-Content -Path $PSScriptRoot/bicep/deploy.ps1