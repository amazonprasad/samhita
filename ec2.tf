resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name
  description = var.sg-description
 # vpc_id      = aws_vpc.main.id

    ingress {
        description = "allows all ports"
        from_port        = var.inbound-from_port
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
        #ipv6_cidr_blocks = ["::/0"]
    }

     ingress {
        description = "allows all ports"
        from_port        = 0
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
     }

       tags = {
        Name = "roboshop-all-aws"
       
   }
}