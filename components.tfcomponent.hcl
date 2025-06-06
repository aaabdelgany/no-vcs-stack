component "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "demo-terarform-bucket-stack-terraform-test"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}








# output "s3_bucket_name" {
#   type        = string
#   description = "The name of the S3 bucket created by the module"
#   value       = component.s3_bucket.s3_bucket_id
# }

# output "s3_bucket_arn" {
#   type        = string
#   description = "The ARN of the S3 bucket created by the module"
#   value       = component.s3_bucket.s3_bucket_arn
# }