resource "google_compute_firewall" "firewall-ssh" {

  name    = "firewall-ssh"
  network = google_compute_network.myvpc.name
  direction = "INGRESS"
  target_tags = ["private-vm"]
  
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["35.235.240.0/20"] 
 
}
resource "google_compute_firewall" "private-vm-to-gke" {
  name    = "private-vm-to-gke"
  network = google_compute_network.myvpc.name

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["10.0.0.0/24"]
  target_tags   = ["gke-cluster"]
}