resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type == "Mongodb" ? "t3.small" : "t2.micro"
   
  }

