variable "zone-name" {
  description = "The Azure name for the DNS zone"
  default     = null
}

variable "location" {
  description = "Azure location"
  default     = null
}

variable "cluster-prefix" {
  description = "Cluster prefix"
  default     = null
}

variable "zone-resource-group" {
  description = "Name of the zone resource group"
  default     = null
}

variable "node-external-ips" {
  type        = list
  description = "List of IP address to add as NS records"
  default     = []
}
