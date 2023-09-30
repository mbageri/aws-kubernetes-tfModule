output "public_ip" {
   value = aws_instance.web-server[0].public_ip
}
