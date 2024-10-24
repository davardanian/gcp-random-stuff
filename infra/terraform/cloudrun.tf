resource "google_cloud_run_service" "hello_service" {
  name     = "hello-service"
  location = var.region

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "authorized_invoker" {
  location = var.region
  project  = var.project
  service  = google_cloud_run_service.hello_service.name
  role     = "roles/run.invoker"
  member   = "user:davardanian@gmail.com"
}
