variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string

  validation {
    condition     = can(regex("^(ap|us|eu|ca|sa|af|me)-", var.aws_region))
    error_message = "Provide a valid AWS region."
  }
}

variable "project_name" {
  description = "Project name used for resource naming."
  type        = string

  validation {
    condition     = length(var.project_name) >= 3
    error_message = "Project name must contain at least 3 characters."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition = contains(
      ["dev", "qa", "uat", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, qa, uat or prod."
  }
}