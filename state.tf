resource "ec_deployment" "elasticsearch" {
  name                   = "rahulranjan"
  region                 = "gcp-us-central1"
  version                = "8.17.3"
  deployment_template_id = "gcp-storage-optimized"

  elasticsearch = {
    hot = {
      size       = "4g"
      zone_count = 2
      autoscaling = {}
    }
  }

  kibana = {
    size       = "1g"
    zone_count = 1
  }
}
