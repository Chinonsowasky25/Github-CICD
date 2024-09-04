provider "google" {
  project = sonic-totem-416019
  region  = us-central1
}

resource "google_container_cluster" "primary" {
  name               = "my-cluster"
  location           = var.region
  initial_node_count = 2
  min_master_version = "1.22"
  node_config {
    machine_type = "e2-medium"
  }
}

# Add more resources as needed
