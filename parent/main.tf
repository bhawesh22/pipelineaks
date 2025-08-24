module "resource_group" {
  source                  = "../modules/azurerm_resource_group"
  resource_group_name     = "bhawesh_n"
  resource_group_location = "WestUS"
}
module "resource_group" {
  source                  = "../modules/azurerm_resource_group"
  resource_group_name     = "bhawesh_Y"
  resource_group_location = "WestUS"
}

module "aks_cluster" {
  source                  = "../modules/azurerm_aks_cluster"
  depends_on              = [module.resource_group]

  resource_group_name     = "bhawesh_n"
  resource_group_location = "WestUS"
  azurerm_kubernetes_cluster  = "bhawesh_aks_cluster"
  dns_prefix              = "bhaweshdns"
  kubernetes_version      = "1.32.6"
}
