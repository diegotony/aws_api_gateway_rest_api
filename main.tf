locals {
  tags = { template = "tf-modules", service = "api-gtwy" }
}

resource "aws_api_gateway_rest_api" "api_rest" {
  name = "api-gtwy-${var.name}"
  tags = merge(var.tags, local.tags)
}

resource "aws_api_gateway_resource" "proxy" {
  rest_api_id = aws_api_gateway_rest_api.api_rest.id
  parent_id   = aws_api_gateway_rest_api.api_rest.root_resource_id
  path_part   = "{proxy+}"

}

resource "aws_api_gateway_method" "proxy" {
  rest_api_id   = aws_api_gateway_rest_api.api_rest.id
  resource_id   = aws_api_gateway_resource.proxy.id
  http_method   = "ANY"
  authorization = "NONE"
  request_parameters = {
    "method.request.path.proxy" = true
  }

}

resource "aws_api_gateway_deployment" "apig_deployment" {
  depends_on = [
    "aws_api_gateway_resource.proxy",
    "aws_api_gateway_method.proxy",
    "module.integrations"
  ]

  rest_api_id = aws_api_gateway_rest_api.api_rest.id
  stage_name  = var.stage

  lifecycle {
    create_before_destroy = true
  }

}

