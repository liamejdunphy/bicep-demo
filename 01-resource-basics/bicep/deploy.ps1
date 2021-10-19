$resourceGroupName = '' # TODO: Fill in parameter value

az deployment group create `
    --resource-group $resourceGroupName `
    --template-file './00-main.bicep'

az deployment group create `
    --resource-group $resourceGroupName `
    --template-file './01-main.bicep' `
    --parameters '@01-main.parameters.jsonc'