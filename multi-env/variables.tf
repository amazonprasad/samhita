variable "instance_names" {
    type = map
    default = {
        mongodb = "t3.small"
        shipping = "t3.small"
        mysql = "t3.small"
    }
}
variable "zone_id" {
    default =  "Z02586023LKA7SPH3GG6V" 
}
variable "domain_name" {
  default = "manacars.shop"
}
 

