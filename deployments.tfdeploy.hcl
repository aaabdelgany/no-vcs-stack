identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "test-deployment" {
  # import = "true" # required for non vcs backed stacks 
  inputs = {
    region = "us-west-2"
    bucket = "demo-terarform-bucket-stack-terraform-test"
    acl    = "private"
    control_object_ownership = true
    versioning = {
      enabled = true
    }
    tags = {
      CanDelete    = "true"
      Organization = "stacks-sujay-test-01"
      Project      = "project-no-vcs-stacks"
      ManagedBy    = "Terraform"
    }
    identity_token = identity_token.aws.jwt
    role_arn       = "arn:aws:iam::668081019392:role/stacks-sujay-test-01-project-no-vcs-stacks"
  }
}