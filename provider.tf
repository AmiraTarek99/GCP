provider "google" {
  credentials = file("./gcp-key.json")
  project     = var.project-id
  region      = var.project-region
}
