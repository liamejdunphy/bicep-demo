$resourceGroupName = '' # TODO: Fill in parameter value
$templateFile = './main.bicep'

az deployment group create `
    --resource-group $resourceGroupName `
    --template-file $templateFile `
    --parameters '@azuredeploy.parameters.jsonc'
