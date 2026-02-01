variable "project_name" {
    description = "Project name used for resource naming"
    type = string
    default = "tfazure"
}

variable "environment" {
    description = "Deployment environment"
    type = string
    default = "dev"
}

variable "location" {
    description = "Azure region"
    type = string
    default = "Central India"
}