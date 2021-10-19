// Hardcoded values have now been substituted out to parameters.

@minLength(3)
@maxLength(24)
param storageAccountName string

param containerName string

// We can provide default parameters, and these parameters can use built in Bicep functions as the value. You can see all Bicep functions here: https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions

param location string = resourceGroup().location

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

// We can deploy child resources by referring to the parent resources symbolic name in the child resource name. There are a few ways to handle deploying child resources in Bicep, please see: https://docs.microsoft.com/en-gb/azure/azure-resource-manager/bicep/child-resource-name-type

resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = {
  name: '${stg.name}/default/${containerName}'
}
