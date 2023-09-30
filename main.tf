resource "aws_instance" "web-server" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  key_name      = var.KEY_NAME
  count = 4
  tags = {
    Name = "server-${var.ENV_NAME[count.index]}"
  }
}