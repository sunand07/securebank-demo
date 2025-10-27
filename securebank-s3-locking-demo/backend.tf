terraform {
  backend "s3" {
    bucket         = "securebank-s3-demo-bucke" # change this
    key            = "abhi/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
