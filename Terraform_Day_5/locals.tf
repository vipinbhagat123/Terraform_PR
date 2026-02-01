locals {
  resource_group_name = "${var.project_name}-${var.environment}-rg"
  vnet_name           = "${var.project_name}-${var.environment}-vnet"
  subnet_name         = "app"
  public_ip_name      = "${var.project_name}-${var.environment}-pip"
  nic_name            = "${var.project_name}-${var.environment}-nic"
  vm_name             = "${var.project_name}-${var.environment}-vm"
}
