resource "aws_lambda_function" "api_lambda" {
  function_name = "ServerlessFunction"
  runtime       = "python3.9"
  handler       = "index.lambda_handler"
  filename      = "lambda.zip"  # Ensure this file exists
  role          = aws_iam_role.lambda_role.arn  # Add this line
}
