variable "lambda_function_names" {
    type = list(string)
    description = "(optional) describe your variable"
}

variable "name" {
    type = string
    description = "(optional) describe your variable"
}

variable "stage" {
    type = string
    description = "(optional) describe your variable"
}


variable "tags" {
    type = map
    default = {
        "service" = "api_gateway"
    }
    description = "tags"
}