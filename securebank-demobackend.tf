terraform {
  backend "s3" {
    bucket = "s3-bucket-for-demo-demo123"
    region = "us-east-1"
    key = "securebank/terraform.tfstate"
    dynamodb_endpoint = "terraform_lock"
  }
}
