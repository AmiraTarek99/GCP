resource "google_compute_subnetwork" "mysubnet" {
  count = 2  
  name          = var.subnet-name[count.index] 
  ip_cidr_range = var.subnet-cidr[count.index]
  region        = var.subnet-region[count.index]
  network       = google_compute_network.myvpc.id

 // private_ip_google_access = var.private_ip_google_access

  depends_on = [
    google_compute_network.myvpc
  ]
}