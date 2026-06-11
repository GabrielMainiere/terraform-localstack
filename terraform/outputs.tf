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

output "gateway_id" {
  description = "ID do API Gateway REST."
  value       = aws_api_gateway_rest_api.api.id
}

output "gateway_invoke_url" {
  description = "URL local do API Gateway no LocalStack."
  value       = "http://localhost:4566/restapis/${aws_api_gateway_rest_api.api.id}/${aws_api_gateway_stage.dev.stage_name}/_user_request_"
}
