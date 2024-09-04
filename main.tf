provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name               = "my-cluster"
  location           = var.region
  initial_node_count = 3
  min_master_version = "1.22"
  node_config {
    machine_type = "e2-medium"
  }
}

# Add more resources as needed
