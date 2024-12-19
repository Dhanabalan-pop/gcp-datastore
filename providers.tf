# Configure the Google Cloud provider
provider "google" {
  credentials = base64decode((var.GOOGLE_CREDENTIALS_BASE64))  # Path to your service account key file
  project     = "arctic-marking-445204-v5"  # Your Google Cloud project ID
  region      = "us-central1"        # The region you want to use (optional, but good practice)
}

# Example resource - Create a Google Cloud Storage bucket
resource "google_storage_bucket" "bucket" {
  name          = "my-tf-bucket"
  location      = "US"
  force_destroy = true
}

variable GOOGLE_CREDENTIALS_BASE64 {
  type = string
  sensitive = true
}