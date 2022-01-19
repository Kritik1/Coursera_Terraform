resource azurerm_resource_group "sampleResourceGroup" {
      name = "sampleresourcegroup"
      location = "East US"
      tags = {
             env = "Demo Terraform"
           }
}
