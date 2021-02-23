provider "google" {
  project = var.project_id
}

terraform {
  backend "gcs" {
    bucket = "terrabucket91"
    prefix = "terraform/dataflowstate"
  }
}