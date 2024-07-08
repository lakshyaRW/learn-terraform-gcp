terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "mapynews"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
resource "google_firestore_database" "database1" {
    project = "mapynews"
    name    = "database1"
}

resource "google_firestore_database" "database2" {
    project = "mapynews"
    name    = "database2"
}
