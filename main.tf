resource "aws_instance" "web-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count = 3
  tags = {
    Name = "machine${count.index}"
  }
}