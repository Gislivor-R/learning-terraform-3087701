resource "google_compute_instance" "web" {
  name         = "hello-world"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network       = "default"
    access_config {} # Esto asigna una IP pública
  }

  tags = ["http-server"]

  metadata = {
    Name = "HelloWorld"
  }
}

