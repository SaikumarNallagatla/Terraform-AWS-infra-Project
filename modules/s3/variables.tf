variable "bucket_name" {
  description = "Unique S3 bucket name"

  type = string

  validation {
    condition = (
      length(var.bucket_name) >= 3 &&
      length(var.bucket_name) <= 63
    )

    error_message = "Bucket name must be between 3 and 63 characters."
  }
}

variable "enable_versioning" {
  description = "Enable bucket versioning."
  type        = bool
  default     = true
}

variable "enable_encryption" {

  description = "Enable SSE"

  type = bool

  default = true

}

variable "tags" {
  description = "Tags to apply to the bucket."

  type = map(string)

  default = {}
}