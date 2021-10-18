$resourceGroupName = '' # TODO: Fill in parameter value
$templateFile = './azuredeploy.json'

az deployment group create `
    --resource-group $resourceGroupName `
    --template-file $templateFile `
    --parameters '@azuredeploy.parameters.jsonc'