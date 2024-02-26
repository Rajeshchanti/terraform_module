variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"  #You can replace with your cidr_block
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

# Give your vpc details
variable "common_tags" {
  type = map 
  default = {}
}

# Give your vpc_tags (Ex: vpc_Name)
variable "vpc_tags" {
  type = map 
  default = {}
}

variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}
variable "igw_tags" {
  default = {}
}

variable "public_subnets_cidr" {
  type = list
  validation {
    # Allowing 2 public subnets only
    condition = length(var.public_subnets_cidr) == 2
    error_message = "Please give 2 public_subnets_cidr Only"
  }
}
variable "public_subnets_tags" {
  type = map
  default = {}
}

variable "private_subnets_cidr" {
  type = list 
  validation {
    condition = length(var.private_subnets_cidr) == 2
    error_message = "Please give 2 private_subnets_cidr only"
  }
}
variable "private_subnets_tags" {
  type = map 
  default = {}
}

variable "database_subnets_cidr" {
  type = list
  validation {
    condition = length(var.database_subnets_cidr) == 2
    error_message = "please give 2 database_subnets_cidr only"
  }
}
variable "database_subnets_tags" {
  type = map 
  default = {}
}
variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}
variable "private_route_table_tags" {
  default = {}
}
variable "database_route_table_tags" {
  default = {}
}
variable "is_peering_required" {
  type = bool
  default = false
}
# variable "acceptor_vpc_id" {
#   type = string
#   default = ""
# }
# variable "vpc_peering_tags" {
#   default = {}
# }