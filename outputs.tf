output "public_dns" {
   value = aws_instance.web-server[*].public_dns
}

output "public-ip" {
  value = aws_instance.web-server[*].public_ip
}