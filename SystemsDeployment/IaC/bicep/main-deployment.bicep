targetScope = 'subscription'

param location string = 'eastus'
param resourcePrefix string = 'dacrooksample'

var resourceGroupName = '${resourcePrefix}-rg'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

module aks './aks-cluster.bicep' = {
  name: '${resourcePrefix}cluster'
  scope: rg
  params: {
    location: location
    clusterName: resourcePrefix
  }
}

module keyvault './keyvault.bicep' = {
  name: '${resourcePrefix}kv'
  scope: rg
  params: {
    location: location
    name: '${resourcePrefix}kv'
  }
}
