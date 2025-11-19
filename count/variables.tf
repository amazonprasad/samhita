variable "instance_names" {
    type = list
    default = ["mongodb","catalogue","redis","user","cart","mysql","shipping","rabbitmq","payment","dispatch","web"]
}
variable "ami_id" {
    default = "ami-0b4f379183e5706b9"
  
}
variable "zone_id" {
    default =  "Z02586023LKA7SPH3GG6V" 
}
variable "domain_name" {
  default = "manacars.shop"
}