locals {
    resource_group_name = "${var.project_name}-${var.environment}-rg"
    vnet_name           = "${var.project_name}-${var.environment}-vnet"
    nsg_name            = "${var.project_name}-${var.environment}-nsg"
}