data "aws_lambda_function" "this" {
  function_name = var.function_name
}


resource "aws_api_gateway_integration" "integration" {
  rest_api_id = var.rest_api_id
  resource_id = var.resource_id
  http_method = var.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = data.aws_lambda_function.this.invoke_arn

}
