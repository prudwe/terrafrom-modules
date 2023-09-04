variable "cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr_blocks" {
  description = "A list of CIDR blocks for subnets"
}

variable "availability_zones" {
  description = "A list of availability zones"
}

variable "tags" {
  description = "Tags to apply to all VPC resources"
  type        = map(string)
}

