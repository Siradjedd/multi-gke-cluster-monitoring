resource "google_compute_router_nat" "nat_gateway" {
  name   = "nat-gateway"
  router = google_compute_router.nat_router.name
  region = var.region
  #all internal ips will be abple to reach internet
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES"
  #external ip will be picked automaticaly
  nat_ip_allocate_option = "AUTO_ONLY"

}