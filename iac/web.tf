# FRONTEND
resource "docker_container" "web" {
  name  = "web-${terraform.workspace}"
  image = "lab/web"

  ports {
    internal = 80
    external = var.web_port[terraform.workspace]
  }
}

# BACKEND
resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = "lab/api"

  ports {
    internal = 3000
    external = var.api_port[terraform.workspace]
  }
}

# BASE DE DATOS
resource "docker_container" "db" {
  name  = "db-${terraform.workspace}"
  image = "postgres:latest"

  env = [
    "POSTGRES_PASSWORD=123456"
  ]

  ports {
    internal = 5432
    external = var.db_port[terraform.workspace]
  }
}