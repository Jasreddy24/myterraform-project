terraform {
  backend "s3" {
    bucket = "jashuuuz-bucket"
    key = "env/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-lock"
    encrypt = true
    
  }
}