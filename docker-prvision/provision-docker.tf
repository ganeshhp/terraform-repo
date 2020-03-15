
provider "docker" {
  host = "tcp://192.168.33.22:2376"
}

# Create a container
resource "docker_container" "ubuntu" {
  image = "${docker_image.ubuntu.latest}"
  name  = "ubuntu"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}
