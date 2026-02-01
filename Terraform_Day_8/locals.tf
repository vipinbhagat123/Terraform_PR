locals {
  environment         = terraform.workspace
  resource_group_name = "${var.project_name}-${local.environment}-rg"
  vnet_name           = "${var.project_name}-${local.environment}-vnet"
}
