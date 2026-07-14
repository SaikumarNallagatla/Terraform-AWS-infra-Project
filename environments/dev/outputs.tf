output "website_bucket_name" {
  value = module.website_bucket.bucket_name
}

output "website_bucket_arn" {
  value = module.website_bucket.bucket_arn
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "region" {
  value = data.aws_region.current.name
}

output "availability_zones" {
  value = data.aws_availability_zones.available.names
}

