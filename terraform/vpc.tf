#resource "google_project_service" "compute" {
 # service = "compute.googleapis.com"
#}

#resource "google_project_service" "container" {
 # service = "container.googleapis.com"
#}


#creates a virtual network without the default subnet
resource "google_compute_network" "my_network" {
  name                            = "my-cluster-vpc"
  delete_default_routes_on_create = false
  auto_create_subnetworks         = false


}