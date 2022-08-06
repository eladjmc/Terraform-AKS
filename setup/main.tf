#####################################################################################################
#                                                                                                   #
#                       Kubernetes-cluster Resource group creation                                  #
#                                                                                                   #
#####################################################################################################
resource "azurerm_resource_group" "kubernetes" {
  name     = var.rg_name
  location = var.location
}
#####################################################################################################
#                                                                                                   #
#                       Kubernetes-cluster Container registry creation                              #
#                                                                                                   #
#####################################################################################################
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.kubernetes.name
  location            = azurerm_resource_group.kubernetes.location
  sku                 = "Basic"
  admin_enabled       = true
}
#####################################################################################################
#                                                                                                   #
#                       Kubernetes-cluster Staging environment creation                             #
#                                                                                                   #
#####################################################################################################
module "k8s_staging" {
  source = "../modules/k8s"
  location=var.location
  cluster_name=var.cluster_name
  acr_name=var.acr_name
  rg_name=azurerm_resource_group.kubernetes.name
  node_amount=var.node_amount
  scope=azurerm_container_registry.acr.id
}
#####################################################################################################
#                                                                                                   #
#                       Kubernetes-cluster Production environment creation                          #
#                                                                                                   #
#####################################################################################################
module "k8s_production" {
  source = "../modules/k8s"
  location=var.location_second_cluster
  cluster_name=var.second_cluster_name
  acr_name=var.acr_name
  rg_name=azurerm_resource_group.kubernetes.name
  node_amount=var.second_cluster_node_amount
  scope=azurerm_container_registry.acr.id
}

