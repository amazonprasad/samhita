resource "aws_instance" "example" {
  for_each = var.instance_names
  ami           = var.ami_id
  instance_type = each.value
  tags = {
    Name = each.key
  }
   
  }
  resource "aws_route53_record" "www" {
   # count = 11
    count = length(var.instance_names)
    zone_id = var.zone_id
    name    = "${var.instance_names[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [var.instance_names[count.index] == "web" ? aws_instance.example[count.index].public_ip : aws_instance.example[count.index].private_ip]

  }

output "instaces_info" {
  value = aws_instance.example
}


  