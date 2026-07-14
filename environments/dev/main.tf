module "website_bucket" {

  source = "../../modules/s3"

  bucket_name = local.website_bucket_name

  enable_versioning = true

  tags = local.common_tags
}