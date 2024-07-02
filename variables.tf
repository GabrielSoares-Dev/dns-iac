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

variable "default_example_domain" {
  type    = string
  default = "gabrieltest.shop"
}

variable "mysql_identifier" {
  type    = string
  default = "mysql-dev"
}

variable "mysql_subdomain" {
  type    = string
  default = "mysql-db-dev"
}