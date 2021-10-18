locals {
  dns_name = "crdant.cloud."
}

resource "google_dns_managed_zone" "crdant_cloud" {
  name        = "crdant-cloud"
  dns_name    = local.dns_name
  description = "Domain for cloud services" 
  
  dnssec_config {
    state         = "on"
  }
}
