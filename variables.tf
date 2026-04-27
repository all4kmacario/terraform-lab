variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "terraform-nginx"
}

variable "external_port" {
  description = "External port number on localhost"
  type        = number
  default     = 8080
}