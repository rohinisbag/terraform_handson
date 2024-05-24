terraform {
  backend "s3" {
    bucket = "terraform-bucket-state-dove"
    key    = "terraform/backend"
    region = "ap-south-1"
  }
}