component "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  # source = "gihub.com/terraform-aws-modules/s3-bucket/aws" # does not need version attribute
  # source = "github.com/terraform-aws-modules/s3-bucket/aws?ref=v4.8.0" #f fails due to query path string
  version = "4.10.0" # mandatory to specify version when using registry sources
  inputs = {
    bucket                   = var.s3_bucket_name
    acl                      = var.s3_bucket_acl
    control_object_ownership = var.control_object_ownership
    object_ownership         = "ObjectWriter"
    versioning               = var.s3_bucket_versioning
  }
  
  providers = {
        aws    = provider.aws.this
    }
}
