variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

provider "google" {
  credentials = file("creds.json")
  project = var.project_id
  region  = var.region
}


resource "google_dataflow_job" "big_data_job" {
  name              = "dataflow-job"
  template_gcs_path = "gs://dataflow-templates/latest/Word_Count"
  temp_gcs_location = "gs://jit/output/tmp"
  parameters = {
    inputFile="gs://dataflow-samples/shakespeare/kinglear.txt"
    output="gs://jit/output/"
  }
}