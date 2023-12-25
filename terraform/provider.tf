terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.10.0"
    }
  }
}
provider "google" {
  project     = var.project_id
  region =  var.region
  credentials = "./tf-key.json"
}

terraform {
  backend "gcs" {
    bucket                      = "tfstate-bckt"
   # impersonate_service_account = "terraform@gcp-leader-cert.iam.gserviceaccount.com"

  }
}