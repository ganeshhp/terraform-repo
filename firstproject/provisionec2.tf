

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name"  {
	default = "terraform"
}


provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region     = "us-east-2"
}


resource "aws_instance" "nginx" {
  ami       = "ami-0520e698dd500b1d1"
  instance_type = "t2.micro"
  key_name  = "${var.key_name}"

#  connection {
#    user     = "ec2-user"
#    host     = "self.public_ip"
#    private_key = "${file(var.private_key_path)}"
#  }

#  provisioner "remote-exec" {
#    inline = [
#       "sudo yum install nginx -y",
#       "sudo service_nginx_start"
#       ]
#    }
}


