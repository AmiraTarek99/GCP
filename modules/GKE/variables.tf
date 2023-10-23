variable "cluster-name" {
  type = string
}
variable "region" {
  type = string
}
variable "cidr-ranges" {
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
variable "cluster-email" {
  type = string
}
variable "cluster-subnet" {
  type = string
}
variable "vpc-id" {
  type = string
}
variable "nodepool-name" {
  type = string
}
variable "machine-type" {
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

