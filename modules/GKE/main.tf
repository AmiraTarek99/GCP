resource "google_container_cluster" "privatecluster"{
  //provider = google-beta
  name     = var.cluster-name
  network = var.vpc-id
  location = var.region
  subnetwork = var.cluster-subnet
  deletion_protection= false
  remove_default_node_pool = true
  initial_node_count       = 1

  master_authorized_networks_config {
    cidr_blocks {
        cidr_block = var.authnet-cidr-range
        display_name = var.authnet-name
    }
    /*cidr_blocks {
        cidr_block = var.authnet-mylocal-cidr
        display_name = var.authnet-mylocal-name
    }*/
  }
  private_cluster_config {
    enable_private_nodes = true
    enable_private_endpoint = true
    master_global_access_config{enabled = true}
    master_ipv4_cidr_block = var.master-ipv4-cidr-block
  }

    node_locations = [
    "${var.region}-a",
    "${var.region}-b",
    "${var.region}-c",
  ]

}

resource "google_container_node_pool" "privatecluster-node-pool" {
  name       = var.nodepool-name
  cluster    = google_container_cluster.privatecluster.name
  location = var.region
  node_count = 1

  node_config {
    
    preemptible  = true
    machine_type = var.machine-type
    service_account = var.cluster-email
    tags = ["gke-cluster"]
    oauth_scopes    = var.worker-oauthscopes

  }
}