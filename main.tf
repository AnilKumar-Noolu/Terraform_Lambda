resource "aws_lambda_function" "terraform_lambda_func" {
  filename      = "${path.module}/python/python-hello-func.zip"
  function_name = "Test_Lambda_Function"
  role          = aws_iam_role.lambda_role.arn
  handler       = "hello-world.lambda_handler"
  runtime       = "python3.8"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}

