provider "google" {
  credentials = file("~/iti_devops/gcp-key.json")
  project     = var.project-id
  region      = var.project-region
}
