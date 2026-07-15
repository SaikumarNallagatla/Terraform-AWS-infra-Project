module "website_bucket" {

  source = "../../modules/s3"

  bucket_name = local.website_bucket_name

  enable_versioning = true

  enable_lifecycle_rule = true

  tags = local.common_tags
}