#1. Command line
#2. -var-file
#3. terrafrom .tfvars
#4. ENV variables 


variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
   
 }
 variable "tags" {
    type = map
    default = {
        Name = "Helloworld"
        project = "roboshop"
        Enviroment = "Dev"
        Component = "web"
        Terraform = "True"
    }
   
 }
 variable "sg-name" {
    type = string
    default = "roboshopa-all"
   
 }
 variable "sg-description" {
    type = string
    default = "allowing all port"
   
 }
 variable "inbound-from-port" {
    type = number
    default = 0
   
 }
 variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
   
 }
