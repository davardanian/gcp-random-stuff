variable "project" {
  description = "The Google Cloud project ID"
  type        = string
  default     = "quantum-reducer-439412-e3"
}

variable "region" {
  description = "The region to deploy the Cloud Run service"
  type        = string
  default     = "europe-west3"
}