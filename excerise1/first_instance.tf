provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-001843b876406202a"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  key_name               = "dove_key"
  vpc_security_group_ids = ["sg-02a108efb4a34e9fc"]
  tags = {
    Name        = "Dove-Instance",
    pagal_aurat = "Rohini"
  }

}


