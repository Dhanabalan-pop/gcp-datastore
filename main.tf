module "cloud-datastore" {
  source  = "./modules"
  location = "us-east1"
  project ="arctic-marking-445204-v5"
  name = "datastore-gcp"
  kind = "student"
  index_properties = [
    {
      index_name     = "index1"
      property_names = ["student_id", "name"]
      directions     = ["ASCENDING", "ASCENDING"]
    },
    {
      index_name     = "index2"
      property_names = ["registration_date", "participation_status"]
      directions     = ["DESCENDING", "ASCENDING"]
    }
  ]
}