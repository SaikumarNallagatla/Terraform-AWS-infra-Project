module "backend" {
  source = "../modules/backend"

  backend_bucket_name = var.backend_bucket_name
  dynamodb_table_name = var.dynamodb_table_name
}