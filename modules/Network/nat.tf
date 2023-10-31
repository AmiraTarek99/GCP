resource "google_compute_router" "myrouter" {
  name    = "amira-router"
  region  = google_compute_subnetwork.mysubnet[0].region
  network = google_compute_network.myvpc.id


}

resource "google_compute_router_nat" "mynat" {
  name                               = "amira-router-nat"
  router                             = google_compute_router.myrouter.name
  region                             = google_compute_router.myrouter.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

}