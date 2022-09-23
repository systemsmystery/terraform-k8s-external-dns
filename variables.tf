variable "cluster_configfile" {
  description = "The path to the cluster config file"
  default     = "~/.kube/config"
}

variable "cluster_context" {
  description = "The cluster context"
}

variable "values_file" {
  description = "The path to the values file for switchboard"
}