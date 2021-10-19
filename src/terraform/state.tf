terraform {
  backend "gcs" {
    bucket = "terraform-dns-crdant-cloud"
    prefix = "terraform/state"
  }
}
