terraform {
  backend "s3" {
    bucket = "mydev-tf-state-bucket-10"
    key = "LockID"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table-1"
  }
}
