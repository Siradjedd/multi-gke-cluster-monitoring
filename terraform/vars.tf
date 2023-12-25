variable project_id {
  type        = string
  default     = "gcp-leader-cert"
  description = "the id of the project"
}

variable region {
  type        = string
  default     = "europe-west1"
  description = "the region we working on"
}

variable zone {
  type        = string
  default     = "europe-west1-b"
  description = "the zone we working on"
}

variable bucket {
    type  = string
    default = "tfstate-bckt"
    description = " the bucket that stores the tfstate file"
}

variable "cluster_names" {
  type    = list(string)
  default = ["cluster1", "cluster2"]
}