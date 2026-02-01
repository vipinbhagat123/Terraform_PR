variable "project_name" {
  type    = string
  default = "tfazure"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnets" {
  type = map(string)
  default = {
    app = "10.0.1.0/24"
    db  = "10.0.2.0/24"
  }
}
