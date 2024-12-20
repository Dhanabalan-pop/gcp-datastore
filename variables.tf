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
}
variable kind {
  type = string
}

variable "index_properties" {
  description = "List of index properties for the Datastore instance, including index name, property names, and their directions"
  type = list(object({
    index_name     = string
    property_names = list(string)
    directions     = list(string)
  }))
}
