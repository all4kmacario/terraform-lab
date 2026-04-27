terraform {
  required_version = ">=1.14.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.6"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  name  = "terraform-ngix"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

output "nginx_url" {
  value = "http://localhost:8080"
}