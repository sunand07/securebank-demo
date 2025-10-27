provider "aws"  {
  region = "us-east-1"
}
resource "aws_instance" "securebank" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = var.subnet_id_value 
}

resource "aws_s3_bucket" "s3_bucket_for_demo_demo_securebank" {
bucket = "s3-bucket-for-demo-demo123"
}

resource "aws_dynamodb_table" "terraform_lock" {
name = "terraform_lock"
billing_mode = "Pay_per_request"
hash_key = "Lock_ID"

attribute {
  name = "Lock_ID"
  type = "S"
}
}
