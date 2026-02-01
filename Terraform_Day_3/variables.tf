variable "project_name" {
    type = string
    default = "tfazure"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "location" {
    type = string
    default = "Central India"
}

variable "storage_accounts" {
    description = "List of storage account to create"
    type = list(string)
    default = ["logs", "data", "backup"]
}