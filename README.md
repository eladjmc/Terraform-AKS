<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_k8s_production"></a> [k8s\_production](#module\_k8s\_production) | ../modules/k8s | n/a |
| <a name="module_k8s_staging"></a> [k8s\_staging](#module\_k8s\_staging) | ../modules/k8s | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_resource_group.kubernetes](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | The container registry name(needs to be unique) | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The kubernetes clusters namme | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Resource group location(Zone) | `string` | n/a | yes |
| <a name="input_location_second_cluster"></a> [location\_second\_cluster](#input\_location\_second\_cluster) | Resource group location(Zone) | `string` | n/a | yes |
| <a name="input_node_amount"></a> [node\_amount](#input\_node\_amount) | The amount of nodes for the cluster | `number` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The resource group name | `string` | n/a | yes |
| <a name="input_second_cluster_name"></a> [second\_cluster\_name](#input\_second\_cluster\_name) | The second kubernetes clusters namme | `string` | n/a | yes |
| <a name="input_second_cluster_node_amount"></a> [second\_cluster\_node\_amount](#input\_second\_cluster\_node\_amount) | The amount of nodes for the cluster | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
