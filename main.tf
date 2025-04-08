resource "elasticstack_elasticsearch_security_api_key" "api_key" {
  name = "terraform-api-key"
  role_descriptors = jsonencode({
    "custom-role" = {
      cluster = ["all"]
      index = [{
        names      = ["*"]
        privileges = ["all"]
      }]
    }
  })
}
