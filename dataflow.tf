resource "google_dataflow_job" "big_data_job" {
  name              = "dataflow-job"
  zone = "us-central1-a"
  template_gcs_path = "gs://jit/templates/template-name.json"
  temp_gcs_location = "gs://jit/tmp"
  service_account_email = "dataflow@terraformlearning-284414.iam.gserviceaccount.com"
  
 
  parameters = {
    inputFile="gs://dataflow-samples/shakespeare/kinglear.txt"
    output="gs://jit/output/"
  }
}
