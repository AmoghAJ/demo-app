resource "google_container_cluster" "demo-app-cluster" {
  
  project            = var.project
  name               = var.app_name
  location           = var.region
  initial_node_count = var.initial_node_count

  node_config {

    disk_size_gb = var.node_disk
    machine_type = var.node_machine_type
    image_type   = var.node_image_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      application = var.app_name
    }

    tags = [var.app_name]
  }

  node_locations = var.node_locations

  timeouts {
    create = var.cluster_create_timeout
    update = var.cluster_update_timeout
  }
}
