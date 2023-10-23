resource "google_compute_network" "myvpc" {
  name                    = "amira-vpc"
  auto_create_subnetworks = false
}