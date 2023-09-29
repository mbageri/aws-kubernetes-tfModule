variable "ami_id" {
  type    = string
  default = "ami-0989fb15ce71ba39e"

}

variable "instance_type" {
  type    = string
  default = "t3.micro"

}

variable "key_name" {
  type    = string
  default = "first-aws"

}

variable "env_name" {
  default = ["build","dev","stage","prod"]

}