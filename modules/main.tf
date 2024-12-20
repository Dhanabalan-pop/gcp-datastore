resource "google_firestore_database" "database" {
  project     = var.project
  name        = var.name
  location_id = var.location
  type        = "DATASTORE_MODE"

  delete_protection_state = "DELETE_PROTECTION_DISABLED"
  deletion_policy         = "DELETE"
}
resource "google_firestore_index" "index" {
  count      = length(var.index_properties)
  project    = var.project
  database   = google_firestore_database.database.name
  collection = var.kind

  query_scope = "COLLECTION_RECURSIVE"
  api_scope   = "DATASTORE_MODE_API"

  # Define the properties dynamically
  dynamic "fields" {
    for_each = var.index_properties[count.index].property_names
    content {
      field_path = fields.value
      order      = var.index_properties[count.index].directions[count.index]
    }
  }
}