output "vpc-id" {
  value       = google_compute_network.myvpc.id
}

output "vm-subnet" {
  
  value =  google_compute_subnetwork.mysubnet[0].id
}

output "cluster-subnet" {
  
  value =  google_compute_subnetwork.mysubnet[1].id
}