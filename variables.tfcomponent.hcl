variable "region" {
  type        = string
  description = "The AWS region in which to create the S3 bucket"
}

variable "role_arn" {
  type        = string
  description = "The ARN of the IAM role to assume"
}

variable "identity_token" {
  type        = string
  ephemeral   = true
  description = "The identity token to use for assuming the role"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the bucket"
}

variable "s3_bucket_name" {
  type        = string
  description = "The name of the S3 bucket to create"
}

variable "s3_bucket_acl" {
  type        = string
  description = "The ACL to apply to the S3 bucket"
}

variable "s3_bucket_versioning" {
  type        = object({
    enabled : bool
  })
  description = "Versioning configuration for the S3 bucket"
}

variable control_object_ownership {
  type = bool
  description = "Control object ownership setting for the S3 bucket"
}