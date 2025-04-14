@description('Deploys a minimal Microsoft Fabric capacity (F2 SKU) for use as a data source in Microsoft Purview governance labs.')
param capacityName string = 'fabric-purview-lab'

@description('Location for the Fabric capacity.')
param location string = resourceGroup().location

@description('Fabric SKU tier (do not change unless deploying larger environments).')
param skuTier string = 'Fabric'

@description('Fabric SKU name. F2 is the entry-level tier suitable for lab simulations.')
param skuName string = 'F2'

resource fabricCapacity 'Microsoft.Fabric/capacities@2023-11-01' = {
  name: capacityName
  location: location
  sku: {
    name: skuName
    tier: skuTier
  }
  tags: {
    environment: 'lab'
    source: 'purview-upskilling'
  }
}
