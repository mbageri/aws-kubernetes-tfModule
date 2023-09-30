# output "public_ip" {
#    value = aws_instance.web-server[*].public_ip
#    value = ["${aws_instance..public_ip}"]

# }

output "public_ip" {
  description = "its ip public"
  value = try(
    aws_instance.web-server[0].public_ip,
    aws_instance.web-server[1].public_ip,
    aws_instance.web-server[2].public_ip,
    aws_instance.web-server[3].public_ip,
    null,
  )
}