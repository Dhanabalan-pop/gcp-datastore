# Configure the Google Cloud provider
provider "google" {
  credentials = file("arctic-marking-445204-v5-fadc02926f28.json")  # Path to your service account key file
  project     = "arctic-marking-445204-v5"  # Your Google Cloud project ID
  region      = "us-central1"        # The region you want to use (optional, but good practice)
}

# Example resource - Create a Google Cloud Storage bucket
resource "google_storage_bucket" "bucket" {
  name          = "my-tf-bucket"
  location      = "US"
  force_destroy = true
}
