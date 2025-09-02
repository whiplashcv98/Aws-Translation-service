variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "request_bucket_name" {
  description = "The name of the S3 bucket for translation requests"
  type        = string
  default     = "clements-translate-requests"
}

variable "response_bucket_name" {
  description = "The name of the S3 bucket for translation responses"
  type        = string
  default     = "clements-translate-responses"
}

variable "lambda_function_name" {
  description = "The name of the AWS Lambda function"
  type        = string
  default     = "clements-translate-lambda"
}

variable "lambda_role_name" {
  description = "The name of the IAM role for the Lambda function"
  type        = string
  default     = "clements-translate-lambda-role"
}

variable "lambda_policy_name" {
  description = "The name of the IAM policy for the Lambda function"
  type        = string
  default     = "clements-translate-policy"
}