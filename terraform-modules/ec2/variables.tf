variable "ami_id" {
  description = "The ID of the AMI for the EC2 instance"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be deployed"
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
}

