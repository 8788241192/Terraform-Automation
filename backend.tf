terraform {
  backend "s3" {
    bucket = "young-minds-app"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table-1"
  }
}

resource "aws_dynamodb_table" "terraform-lock" {
    name           = "terraform_state"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "main"
    attribute {
        name = "main"
        type = "S"
    }
    tags = {
        "Name" = "mydev-tf-state-bucket-10"
    }
}
