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

resource "google_dns_record_set" "crdant_cloud_caa" {
  name         = google_dns_managed_zone.crdant_cloud.dns_name
  managed_zone = google_dns_managed_zone.crdant_cloud.name
  type         = "CAA"
  ttl          = 300

  rrdatas = [
    "0 issue letsencrypt.org"
  ]
}
