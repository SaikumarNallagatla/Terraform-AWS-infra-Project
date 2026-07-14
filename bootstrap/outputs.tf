output "backend_bucket_name" {
  description = "Terraform backend bucket"

  value = module.backend.backend_bucket_name
}

output "backend_bucket_arn" {
  description = "Terraform backend bucket ARN"

  value = module.backend.backend_bucket_arn
}

output "dynamodb_table_name" {
  description = "Terraform lock table"

  value = module.backend.dynamodb_table_name
}