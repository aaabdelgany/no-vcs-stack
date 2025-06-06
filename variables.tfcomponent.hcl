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