# Outputs for Firestore instance
output "firestore_instance_name" {
  description = "The name of the Firestore instance"
  value       = module.cloud-datastore.firestore_instance_name
}

output "firestore_instance_location" {
  description = "The location of the Firestore instance"
  value       = module.cloud-datastore.firestore_instance_location
}

output "index_details" {
  description = "Details of the created indexes"
  value       = module.cloud-datastore.index_details
}