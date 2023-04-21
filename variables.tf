variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
}

variable "web_want" {
  type = bool
  default = true 
}

variable "web_count" {
  type = number
  default = 1
} 

variable "web_domain_name" {
    type = string
}

variable "web_sub_domain_name" {
    type = string
}

variable "mail_want" {
  type = bool
  default = true 
}

variable "mail_count" {
  type = number
  default = 1
} 

variable "mail_domain_name" {
    type = string
}

variable "mail_sub_domain_name" {
    type = string
}

variable "aws_private_key_path" {
    type = string
}
