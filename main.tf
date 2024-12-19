module "cloud-datastore" {
  source  = "terraform-google-modules/cloud-datastore/google"
  version = "0.1.0"
  indexes     = "${file("index.yaml")}"
  # insert the 3 required variables here
}