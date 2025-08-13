
resource "azurerm_kubernetes_cluster" "kubernetes" {
  name                = var.azurerm_kubernetes_cluster
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_A2_v2"
    os_disk_size_gb = 30
  }

  
  identity {
    type = "SystemAssigned"
  }

  role_based_access_control_enabled = true

 
}