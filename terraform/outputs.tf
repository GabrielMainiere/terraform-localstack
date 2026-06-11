output "api_id" {
  description = "ID da EC2 que recebera a API."
  value       = aws_instance.api.id
}

output "api_private_ip" {
  description = "IP privado da EC2."
  value       = aws_instance.api.private_ip
}

output "api_public_ip" {
  description = "IP publico da EC2"
  value       = aws_instance.api.public_ip
}
