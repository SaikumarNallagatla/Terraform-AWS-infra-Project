variable "backend_bucket_name" {
  description = "Terraform backend S3 bucket name"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Terraform state lock table"
  type        = string
}