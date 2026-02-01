locals {
    resource_group_name = "${var.project_name}-${var.environment}-rg"

    storage_accounts_map = {
        for name in var.storage_accounts :
        name => lower("${var.project_name}${var.environment}${name}")
    }
}