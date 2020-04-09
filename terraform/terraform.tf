terraform {
  backend "gcs" {
    credentials = "./account.json"
    bucket      = "terraform-state-my-demo-app"
    prefix      = "terraform/state"
  }
}