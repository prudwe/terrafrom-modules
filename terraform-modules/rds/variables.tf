variable "allocated_storage" {
  description = "The amount of allocated storage in gibibytes (GiB)"
}

variable "storage_type" {
  description = "The storage type (e.g., gp2)"
}

variable "engine" {
  description = "The name of the database engine (e.g., mysql)"
}

variable "engine_version" {
  description = "The database engine version (e.g., 5.7)"
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
}


variable "username" {
  description = "The username for the RDS instance"
}

variable "password" {
  description = "The password for the RDS instance"
}



variable "tags" {
  description = "Tags to apply to the RDS instance"
  type        = map(string)
}

