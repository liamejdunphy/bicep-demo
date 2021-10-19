/* 
  Resources in Bicep are declared using the `resource` keyword.
  Resources also utilise a symbolic name that follows the `resource` keyword, in this case 'stg'. We use the symbolic name to reference the resource elsewhere in our Bicep files.
  Resource are asscoiated with a type and an api version - in this case, we are deploying a storage account using the 2019-06-01 API. You can lookup the available API specs for a given resource here: https://docs.microsoft.com/en-us/azure/templates/
*/

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'examplestorage'          // The name of our storage account.
  location: 'westeurope'          // The location the resource is associated with
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
