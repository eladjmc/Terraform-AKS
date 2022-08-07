<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.k8s](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_role_assignment.kubweb_to_acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | The container registry name(needs to be unique) | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The kubernetes clusters namme | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Resource group location(Zone) | `string` | n/a | yes |
| <a name="input_node_amount"></a> [node\_amount](#input\_node\_amount) | The amount of nodes for the cluster | `number` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The resource group name | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | containers id | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
