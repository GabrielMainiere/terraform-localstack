provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = var.aws_region

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway   = "http://localhost:4566"
    apigatewayv2 = "http://localhost:4566"
    ec2          = "http://localhost:4566"
    rds          = "http://localhost:4566"
  }
}
