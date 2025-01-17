resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_dynamodb_table" "state_lock" {
  name         = var.dynamodb_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
