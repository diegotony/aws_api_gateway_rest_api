# aws_api_gateway_rest_api
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_integrations"></a> [integrations](#module\_integrations) | ./integration/ | n/a |
| <a name="module_permisions"></a> [permisions](#module\_permisions) | ./permision/ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_deployment.apig_deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |
| [aws_api_gateway_method.proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method) | resource |
| [aws_api_gateway_resource.proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource) | resource |
| [aws_api_gateway_rest_api.api_rest](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |
| [aws_cloudwatch_log_group.logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lambda_function_names"></a> [lambda\_function\_names](#input\_lambda\_function\_names) | (optional) describe your variable | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `map` | <pre>{<br>  "service": "api_gateway"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->