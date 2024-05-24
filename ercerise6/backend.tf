terraform {
  backend "s3" {
    bucket = "terraform-bucket-state-dove"
    key    = "terraform/backend_exercise6"
    region = "ap-south-1"
  }
}