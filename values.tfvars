project-id = "amira-gcp-402316"
project-region = "us-east1"
subnet-name=["vm-subnet","cluster-subnet"]
subnet-cidr=["10.0.0.0/24","10.1.0.0/24"]
subnet-region = ["us-east1","us-east4"]
vm-name = "private-vm"
//debian-cloud/debian-11
vm-image = "ubuntu-os-cloud/ubuntu-2004-lts"
vm-zone = "us-east1-b"
machine-type = "e2-medium"
accounts = ["vm-999sa","gke-999sa"]
roles = ["roles/storage.objectAdmin","roles/container.admin","roles/artifactregistry.repoAdmin","roles/artifactregistry.admin","roles/cloudbuild.builds.editor","roles/storage.admin"]
//cluster-roles=["roles/storage.objectAdmin","roles/container.admin","roles/artifactregistry.repoAdmin","roles/artifactregistry.admin"]
cluster-region = "us-east4"
cluster-name = "private-cluster"
authnet-name= "vm-manage-cluster"
master-ipv4-cidr-block= "172.16.0.0/28"
authnet-cidr-range = "10.0.0.0/16"
//authnet-mylocal-cidr= "197.34.97.0/22" 197.34.97.0/30
//authnet-mylocal-name = "mylocal-mange-cluster"
nodepool-name = "private-pool"
//worker-type = "e2-standard-4"
//worker-disktype = "pd-standard"
//worker-disksize = 50
//worker-imagetype = "ubuntu_containerd"
worker-oauthscopes = ["https://www.googleapis.com/auth/cloud-platform"]