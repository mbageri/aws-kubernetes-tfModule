variable "AMI_ID" {
  type    = string
  default = "dfdfami-0989fb15ce71ba39e"

}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t3.micro"

}

variable "KEY_NAME" {
  type    = string
  default = "first-aws"

}

variable "ENV_NAME" {
  default = ["build","dev","stage","prod"]

}