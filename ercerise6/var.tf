
variable "REGION" {
  default = "ap-south-1"
}


variable "ZONE1" {
  default = "ap-south-1a"
}

variable "ZONE2" {
  default = "ap-south-1b"
}

variable "ZONE3" {
  default = "ap-south-1c"
}

variable "AMIS" {
  type = map(any)
  default = {
    ap-south-1 = "ami-001843b876406202a"
  }
}

variable "USER" {
  default = "ec2-user"
}

variable "PUB_KEY" {
  default = "dovekey.pub"
}

variable "PRIV_KEY" {
  default = "dovekey"
}

variable "MYIP" {
  default = "152.58.16.17/32"
}

