variable "location" {
  type    = string
  description = "Resource group location(Zone)"
}

variable "cluster_name" {
  type        = string
  description = "The kubernetes clusters namme"
}

variable "acr_name" {
  type        = string
  description = "The container registry name(needs to be unique)"
}

variable "rg_name" {
  type        = string
  description = "The resource group name"
}
variable "node_amount" {
    type = number
    description = "The amount of nodes for the cluster"
}
variable "scope" {
    type = string
    description = "containers id"
}
