resource "google_firestore_database" "database" {
  project     = "arctic-marking-445204-v5"
  name        = "database-id-dm"
  location_id = "us-east1-b"
  type        = "DATASTORE_MODE"

  delete_protection_state = "DELETE_PROTECTION_DISABLED"
  deletion_policy         = "DELETE"
}

resource "google_firestore_index" "my-index" {
  project     = "arctic-marking-445204-v5"
  database   = google_firestore_database.database.name
  collection = "atestcollection"

  query_scope = "COLLECTION_RECURSIVE"
  api_scope = "DATASTORE_MODE_API"

  fields {
    field_path = "name"
    order      = "ASCENDING"
  }

  fields {
    field_path = "description"
    order      = "DESCENDING"
  }
}