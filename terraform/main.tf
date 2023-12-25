
module "gke_clusters" {
  source     = "terraform-google-modules/kubernetes-engine/google"
  project_id = var.project_id
  region     = var.region
  zones      = ["europe-west1-b"]

  for_each = toset(var.cluster_names)

  name       = format("gke-%s", each.key)
  network    = google_compute_network.my_network.name
  subnetwork = google_compute_subnetwork.subnet.name
  ip_range_pods              = "pod-ip-range"
  ip_range_services          = "service-ip-range"
  http_load_balancing        = false
  network_policy             = false
  horizontal_pod_autoscaling = false
  filestore_csi_driver       = false
  initial_node_count         = 1
  monitoring_service         = "none"
  logging_service            = "none"
  remove_default_node_pool   = true

  node_pools = [
    {
      initial_node_count = 1

      name            = "default-node-pool"
      machine_type    = "e2-medium"
      node_locations  = "europe-west1-b"
      min_count       = 1
      max_count       = 1
      max_surge       = 0
      local_ssd_count = 0
      ssd_total_gb    = 0
      spot            = false
      disk_size_gb    = 10
      disk_type       = "pd-standard"
      image_type      = "COS_CONTAINERD"
      enable_gcfs     = false
      enable_gvnic    = false
      auto_repair     = true
      auto_upgrade    = true
      preemptible     = false
    },
  ]



 
}