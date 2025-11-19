output "ami_id" {
    value = data.aws_ami.centos8.id
  
}
# output "aws_ami_id" {
#     value = data.aws.ami.aws-linux-2023.id
  
# }
output "vpc_info" {
    value = data.aws_vpc.default
  
}