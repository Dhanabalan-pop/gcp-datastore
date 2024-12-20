# Outputs for Firestore instance
output "firestore_instance_name" {
  description = "The name of the Firestore instance"
  value       = google_firestore_database.database.name
}

output "firestore_instance_location" {
  description = "The location of the Firestore instance"
  value       = google_firestore_database.database.location_id
}

output "index_details" {
  description = "Details of the created indexes"
  value       = google_firestore_index.index
}