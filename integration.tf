module "integrations" {
  count = length(var.lambda_function_names)
  function_name = var.lambda_function_names[count.index]
  source = "./integration/"
  rest_api_id = aws_api_gateway_rest_api.api_rest.id
  resource_id = aws_api_gateway_resource.proxy.id
  http_method = "${aws_api_gateway_method.proxy.http_method}"
}