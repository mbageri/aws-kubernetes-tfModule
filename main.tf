module "ec2" {
  # source = "git@github.com:mbageri/ec2_module.git"
  source = "git@github.com:mbageri/ec2_module.git"

}


# resource "aws_instance" "web-server" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   tags = {
#     Name = v
#   }
# }