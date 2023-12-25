resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  network       = google_compute_network.my_network.self_link
  ip_cidr_range = "10.0.16.0/20"
  region        = var.region
  secondary_ip_range {
    range_name    = "pod-ip-range"
    ip_cidr_range = "10.0.32.0/20"
  }
  secondary_ip_range {
    range_name    = "service-ip-range"
    ip_cidr_range = "10.0.48.0/20"
  }
}