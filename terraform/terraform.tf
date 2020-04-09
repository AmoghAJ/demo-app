terraform {
  backend "gcs" {
    credentials = file(var.credentials_file)
    bucket      = "terraform-state-my-demo-app"
    prefix      = "terraform/state"
  }
}