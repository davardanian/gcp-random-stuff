terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
   backend "remote" {
    hostname = "app.terraform.io"
    organization = "Denver"

    workspaces {
      name = "gcp-random-stuff"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}