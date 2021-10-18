$resourceGroupName = '' # TODO: Fill in parameter value

az deployment group create `
    --resource-group $resourceGroupName `
    --template-file ./azuredeploy.json `
    --parameters `@azuredeploy.parameters.jsonc`