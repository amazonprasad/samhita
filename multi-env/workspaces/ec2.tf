resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = lookup(var.instance_type, terraform.workspace)
  

  tags = {
    Name = "HelloWorld"
  }
}