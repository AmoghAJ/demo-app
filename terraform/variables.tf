variable "credentials_file" {
  type        = string
  description = "Location of the credentials keyfile."
}

variable "project" {
  type        = string
  description = "Project name"
}

variable "app_name" {
  type        = string
  description = "Application name"
}

variable "region" {
  type        = string
  description = "region where cluster should be hosted"
}

variable "initial_node_count" {
  type        = string
  description = "minimum initial node count in each availability zone"
}

variable "node_disk" {
  type        = string
  description = "Desired mounted block disk size"
}

variable "node_machine_type" {
  type        = string
  description = "desired VM side"
  # n1-g1-small 
}

variable "node_image_type" {
  type        = string
  description = "desire OS" 
}

variable "node_locations" {
  type        = list(string)
  description = "different availability zones in selected region"
}

variable "cluster_create_timeout" {
  type        = string
  description = "cluster creation timeout"
}

variable "cluster_update_timeout" {
  type        = string
  description = "cluster updation timeout"
}

