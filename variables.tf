//project variables
variable "project-id" {
  type = string
}

variable "project-region" {
  type = string
}

//network variables
variable "subnet-name" {
  type = list
}

variable "subnet-cidr" {
  type = list
}

variable "subnet-region" {
  type = list
}

//vm variables
/*variable "vm-name" {
  type = string
}



variable "vm-image" {
  type = string
}

variable "vm-zone" {
  type = string
}*/


//service account variables
variable "accounts" {
  type = list
}

variable "roles" {
  type = list
}
/*
variable "vm-roles" {
  type = list
}
variable "cluster-roles" {
  type = list
}*/


//cluster variables
variable "cluster-region" {
  type = string
}
variable "machine-type" {
  type = string
}
variable "cluster-name" {
  type = string
}
variable "authnet-name" {
  type = string
}
variable "authnet-cidr-range" {
  type = string
}
/*variable "authnet-mylocal-cidr" {
  type = string
}
variable "authnet-mylocal-name" {
  type = string
}*/
variable "master-ipv4-cidr-block" {
  type = string
}
variable "nodepool-name" {
  type = string
}
/*variable "worker-disktype" {
  type = string
}
variable "worker-disksize" {
  type = string
}
variable "worker-imagetype" {
  type = string
}*/
variable "worker-oauthscopes" {
  type = list
}