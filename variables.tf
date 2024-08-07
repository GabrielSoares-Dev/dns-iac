variable "environment" {
  type    = string
  default = "DEV"
}

variable "example_subdomains" {
  type = map(object({
    name = string
  }))

  default = {
    dev = {
      name = "dev"
    }
  }
}

variable "domain" {
  type    = string
}

variable "mysql_identifier" {
  type    = string
  default = "mysql-dev"
}

variable "mysql_subdomain" {
  type    = string
  default = "mysql-db-dev"
}

