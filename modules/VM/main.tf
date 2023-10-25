resource "google_compute_instance" "private-vm" {
  name         = var.vm-name
  machine_type = var.machine-type 
  zone         = var.vm-zone
  tags         = ["private-vm"]

  boot_disk {
    initialize_params{
      //image = var.vm-image
      image = "projects/amira-gcp-402316/global/images/final3"
      size  = 10
      type  = "pd-balanced"
    }
  }
 

  network_interface {
    network = var.vpc-id
    subnetwork = var.vm-subnet
  }
  /*metadata_startup_script = <<EOF
  #!/bin/bash
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B53DC80D13EDEF05
  sudo apt-get update
  sudo apt-get install apt-transport-https ca-certificates gnupg curl sudo
  echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
  sudo apt-get update
  sudo apt-get install google-cloud-cli
  gcloud init
  sudo apt-get install -y kubectl
  sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
  gcloud container clusters get-credentials private-cluster --region us-central1 --project amira-gcp-402316
  kubectl get nodes
  sudo apt-get update
  sudo apt-get install ca-certificates curl gnupg
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin  gcloud container clusters get-credentials private-cluster --region us-central1 --project amira-gcp-402316  
  docker --version
  EOF*/

  service_account {
    email  = var.vm-email
    scopes = ["cloud-platform"]
  }
}