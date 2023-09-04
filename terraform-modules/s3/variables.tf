variable "bucket_name" {
  description = "The name of the S3 bucket"
}

variable "acl" {
  description = "The access control list for the S3 bucket (e.g., 'public-read')"
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
}

