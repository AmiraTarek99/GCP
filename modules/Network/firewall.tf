resource "google_compute_firewall" "firewall-ssh" {

  name    = "firewall-ssh"
  network = google_compute_network.myvpc.name
  direction = "INGRESS"
  target_tags = ["private-vm"]
  
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"] //35.235.240.0/20
 
}
