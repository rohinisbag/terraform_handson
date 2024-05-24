resource "aws_key_pair" "dove-key" {
  key_name   = "dovekay"
  public_key = file("dovekey.pub")
}

resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-02a108efb4a34e9fc"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }

  provisioner "file" {
    source = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {

    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo yum install wget unzip httpd  -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "wget https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip",
      "unzip -o healet.zip",
      "sudo cp -r healet-html/* /var/www/html/",
      "sudo systemctl restart httpd"
    ]
  }
  connection {
    user        = var.USER
    private_key = file("dovekey")
    host        = self.public_ip
  }
} 

output "PublicIP" {
  value = aws_instance.dove-inst.public_ip
}

output "PrivateIP" {
  value = aws_instance.dove-inst.private_ip
}
