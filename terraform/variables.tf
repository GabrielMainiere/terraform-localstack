variable "aws_region" {
  description = "Regiao fake usada pelo LocalStack."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome base dos recursos da atividade."
  type        = string
  default     = "terraform-localstack"
}
