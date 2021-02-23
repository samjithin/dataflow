resource "google_dataflow_job" "big_data_job" {
  name              = "dataflow-job"
  template_gcs_path = "gs://jit/templates/template-name.json"
  temp_gcs_location = "gs://jit/tmp"
  parameters = {
    inputFile="gs://dataflow-samples/shakespeare/kinglear.txt"
    output="gs://jit/output/"
  }
}
