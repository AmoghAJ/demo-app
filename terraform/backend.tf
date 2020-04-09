terraform {
  backend "gcs" {
    credentials = "/demo-app/secrets/account.json"
    bucket      = "terraform-state-demo-app"
    prefix      = "terraform/state"
  }
}