param location string = resourceGroup().location

//windows system
resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: '' //Name
  location: location
  sku: {
    name: 'S1' //Pricing tier
    capacity: 1 //Number of instance,
  }
}

// Linux System
resource appServicePlanForWindows 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: '' //Name
  kind: 'linux'
  //we must should add reserved as true inside the properties to create linux system,
  //otherwise it will create windows system
  properties:{
    reserved: true
  }
  location: location
  sku: {
    name: 'S1' //Pricing tier
    capacity: 1 //Number of instance,
  }
}
