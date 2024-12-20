# GCP Firestore Datastore Compatibility Module

This Terraform module provisions a **Firestore database in Datastore mode** on Google Cloud, which allows you to manage Datastore-like instances and create indexes dynamically. Here i used student and their participation in annual day as details for index

## Input Variables

- `location`: The region where the Firestore database will be created (e.g., `us-central1`).
- `instance_name`: The name of the Firestore instance.
- `kind: The name of the kind for the Datastore (e.g., `Student`).
- `index_properties`: A list of index properties, each containing an index name, a list of property names, and their corresponding directions.

## Example Usage

```hcl
module "cloud-datastore" {
  source       = "./modules"
  region       = "us-central1"
  instance_name = "my-datastore-instance"
  kind    = "Student"
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

