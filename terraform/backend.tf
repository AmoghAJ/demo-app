terraform {
  backend "gcs" {
    credentials = "/demo-app/secrets/account.json"
    bucket      = "terraform-state-my-demo-app"
    prefix      = "terraform/state"
  }
}