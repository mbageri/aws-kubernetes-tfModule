output "public_ip" {
    value = join(aws_instance.web-server[*].ipv4_address)
}