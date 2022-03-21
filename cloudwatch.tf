resource "aws_cloudwatch_log_group" "logs" {
  name              = "API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.api_rest.id}/${var.stage}"
  retention_in_days = 7
}