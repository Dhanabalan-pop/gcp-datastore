module "cloud-datastore" {
  source  = "./modules"
  # insert the 3 required variables here
  name = "datastore-instance"
  location = "us-east1-b"
}