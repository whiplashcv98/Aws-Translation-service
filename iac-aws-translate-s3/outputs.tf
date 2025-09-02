output "request_bucket_arn" {
  value = aws_s3_bucket.request_bucket.arn
}

output "response_bucket_arn" {
  value = aws_s3_bucket.response_bucket.arn
}

output "lambda_function_arn" {
  value = aws_lambda_function.translate_lambda.arn
}

output "lambda_role_arn" {
  value = aws_iam_role.lambda_role.arn
}