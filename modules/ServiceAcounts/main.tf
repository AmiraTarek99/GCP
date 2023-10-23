resource "google_service_account" "sa" {
  count = 2
  account_id   = var.accounts[count.index]
}
/*resource "google_project_iam_member" "vm-sa-with-roles" {
  count = 6
  project = var.project-id
  role    = var.vm-roles[count.index] 
  member  = "serviceAccount:${google_service_account.sa[0].email}"
}
resource "google_project_iam_member" "cluster-sa-with-roles" {
  count = 4
  project = var.project-id
  role    = var.cluster-roles[count.index] 
  member  = "serviceAccount:${google_service_account.sa[1].email}"
}*/


resource "google_project_iam_member" "sa-with-roles" {
  count = 2
  project = var.project-id
  role    = var.roles[count.index] 
  member  = "serviceAccount:${google_service_account.sa[count.index].email}"
}
resource "google_project_iam_member" "artifact-repo-role-admin" {
  project = var.project-id
  role = var.roles[2] 
  member = "serviceAccount:${google_service_account.sa[1].email}"

}
resource "google_project_iam_member" "artifact-role-admin" {
  project = var.project-id
  role = var.roles[3] 
  member = "serviceAccount:${google_service_account.sa[1].email}"

}

resource "google_project_iam_member" "storage-object-role-admin" {
  project = var.project-id
  role = var.roles[0] 
  member = "serviceAccount:${google_service_account.sa[0].email}"

}
resource "google_project_iam_member" "container-role-admin" {
  project = var.project-id
  role =  var.roles[1]
  member = "serviceAccount:${google_service_account.sa[0].email}"
}
resource "google_project_iam_member" "vm-artifact-repo-role-admin" {
  project = var.project-id
  role = var.roles[2] 
  member = "serviceAccount:${google_service_account.sa[0].email}"
}
resource "google_project_iam_member" "vm-artifact-role-admin" {
  project = var.project-id
  role = var.roles[3] 
  member = "serviceAccount:${google_service_account.sa[0].email}"
}
resource "google_project_iam_member" "cloud-build-role-admin" {
  project = var.project-id
  role = var.roles[4] 
  member = "serviceAccount:${google_service_account.sa[0].email}"
}
resource "google_project_iam_member" "storage-role-admin" {
  project = var.project-id
  role = var.roles[5] 
  member = "serviceAccount:${google_service_account.sa[0].email}"
}