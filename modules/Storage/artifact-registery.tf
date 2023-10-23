resource "google_artifact_registry_repository" "docker-images" {
  location      = var.cluster-region
  repository_id = "amira-repo"
 // description   = "example docker repository"
  format        = "DOCKER"

}