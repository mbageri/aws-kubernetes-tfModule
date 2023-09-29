resource "aws_instance" "web-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count = 4
  tags = {
    Name = "server-${var.env_name[count.index]}"
  }
}