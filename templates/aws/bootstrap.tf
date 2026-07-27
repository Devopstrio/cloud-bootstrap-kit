terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}

resource "aws_s3_bucket" "tf_state" {
  bucket        = "devopstrio-tfstate-bootstrap-bucket"
  force_destroy = false

  tags = {
    Name        = "Terraform State Storage"
    Environment = "production"
    ManagedBy   = "Devopstrio-Cloud-Bootstrap-Kit"
  }
}

resource "aws_dynamodb_table" "tf_locks" {
  name         = "devopstrio-tflocks-bootstrap-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
