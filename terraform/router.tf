resource "google_compute_router" "nat_router" {
  name    = "router"
  region  = var.region
  network = google_compute_network.my_network.id
}