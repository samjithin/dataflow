provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "terrabucket91"
    prefix = "terraform/dataflowstate"
  }
}