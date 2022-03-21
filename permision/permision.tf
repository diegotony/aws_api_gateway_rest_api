resource "aws_lambda_permission" "apigw" {
   statement_id  = "AllowExecutionFromAPIGateway"
   action        = "lambda:InvokeFunction"
   function_name = var.function_name
   principal     = "apigateway.amazonaws.com"
   source_arn = var.source_arn

}

