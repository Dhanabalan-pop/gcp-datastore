variable project {
  type = string
}
variable location {
  type = string
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