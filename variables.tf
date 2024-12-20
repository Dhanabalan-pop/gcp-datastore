variable GOOGLE_CREDENTIALS_BASE64 {
  type = string
  sensitive = true
}
variable project {
  type = string
  default = "arctic-marking-445204-v5"
}
variable location {
  type = string
  default = "us-east1"
}
variable name {
  type = string
  default = "datastore-gcp"
}
variable kind {
  type = string
  default = "test"
}

variable "index_properties" {
  description = "List of index properties for the Datastore instance, including index name, property names, and their directions"
  type = list(object({
    index_name     = string
    property_names = list(string)
    directions     = list(string)
  }))
  default= [
    {
      index_name     = "index1"
      property_names = ["student_id", "name"]
      directions     = ["ASCENDING", "ASCENDING"]
    },
    {
      index_name     = "index2"
      property_names = ["registration_date", "participation_status_1"]
      directions     = ["DESCENDING", "ASCENDING"]
    }
  ]
}
