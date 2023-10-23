module "mynetwork" {
  source                     = "./modules/Network"
  subnet-name                = var.subnet-name
  subnet-cidr                = var.subnet-cidr
  subnet-region              = var.subnet-region
}

module "myvm" {
  source = "./modules/VM"
  vm-name = var.vm-name
  vm-image = var.vm-image
  vm-zone = var.vm-zone
  machine-type = var.machine-type
  vm-email= module.service-account.vm-sa-email
  vm-subnet = module.mynetwork.vm-subnet
  vpc-id = module.mynetwork.vpc-id
  cluster-name=var.cluster-name
  cluster-region = var.cluster-region 
  project-id = var.project-id
  
}

module "service-account" {
  source = "./modules/ServiceAcounts"
  accounts = var.accounts
  roles = var.roles
 // vm-roles = var.vm-roles
  //cluster-roles = var.cluster-roles
  project-id = var.project-id
}

module "storage" {
  source = "./modules/Storage"
  cluster-region = var.cluster-region
}

module "GKE" {
  source = "./modules/GKE"
  cluster-name = var.cluster-name
  vpc-id = module.mynetwork.vpc-id
  cluster-subnet = module.mynetwork.cluster-subnet
  cidr-ranges = var.subnet-cidr[0]
  authnet-name = var.authnet-name
  authnet-cidr-range = var.authnet-cidr-range
  //authnet-mylocal-cidr = var.authnet-mylocal-cidr
  //authnet-mylocal-name = var.authnet-mylocal-name
  master-ipv4-cidr-block = var.master-ipv4-cidr-block
  region = var.subnet-region[1]
  nodepool-name = var.nodepool-name
  machine-type = var.machine-type
  //worker-disksize = var.worker-disksize
  //worker-disktype = var.worker-disktype
  //worker-imagetype = var.worker-imagetype
  cluster-email = module.service-account.cluster-sa-email
  worker-oauthscopes = var.worker-oauthscopes
}





