output "public_ip" {
  value = aws_instance.web-server[1].public_ip
}