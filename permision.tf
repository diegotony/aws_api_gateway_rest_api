module "permisions" {
  source        = "./permision/"
  count         = length(var.lambda_function_names)
  function_name = var.lambda_function_names[count.index]
  source_arn    = "${aws_api_gateway_rest_api.api_rest.execution_arn}/*/*"

}