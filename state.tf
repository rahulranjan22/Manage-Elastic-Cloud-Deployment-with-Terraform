resource "ec_deployment" "elasticsearch" {
  name                   = "rahulranjan"
  region                 = "gcp-us-central1"
  version                = "8.17.3"
  deployment_template_id = "gcp-storage-optimized"

  elasticsearch = {
    hot = {
      size        = "4g"
      zone_count  = 1
      autoscaling = {}
    }

    warm = {
      size        = "2g"
      zone_count  = 1
      autoscaling = {}
    }

    cold = {
      size        = "2g"
      zone_count  = 1
      autoscaling = {}
    }

    ml = {
      size        = "2g"
      zone_count  = 1
      autoscaling = {
        min_size          = "1g"
        max_size          = "4g"
        max_size_resource = "memory"
        min_size_resource = "memory"
      }
    }
  }

  kibana = {
    size       = "1g"
    zone_count = 1
  }

  enterprise_search = {
    size       = "2g"
    zone_count = 1
  }
}
