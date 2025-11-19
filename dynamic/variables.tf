variable "ingress_rules" {

    default = [
        {
          description = "allowing port 22"
          from_port        = 22
          to_port          = 22
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        },
          
        {
          description = "allowing port 3036"
          from_port        = 3036
          to_port          = 3036
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        },

          {
          description = "allowing port 443"
          from_port        = 443
          to_port          = 443
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        }

    ]
  
}