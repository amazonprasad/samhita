locals {

  name = "muni"
  training = "hello" 
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"

  instance_ip = var.instance_names[count.index] == "web" ? aws_instance.example[count.index].public_ip : aws_instance.example[count.index].private_ip
}
