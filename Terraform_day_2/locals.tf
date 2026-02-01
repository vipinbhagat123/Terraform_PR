locals {
  resource_group_name  = "${var.project_name}-${var.environment}-rg"
  storage_account_name = lower("${var.project_name}${var.environment}stg")
}
