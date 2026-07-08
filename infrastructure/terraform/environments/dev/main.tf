# Infrastructure modules will be added here.

module "documents_bucket" {
  source = "../../modules/s3"

  bucket_name = "rag-platform-dev-documents"

  lifecycle_days = 30

  tags = {
    Service = "upload-api"
  }
}

module "processed_bucket" {
  source = "../../modules/s3"

  bucket_name = "rag-platform-dev-processed"

  lifecycle_days = 30

  tags = {
    Service = "ingestion-worker"
  }
}

module "logs_bucket" {
  source = "../../modules/s3"

  bucket_name = "rag-platform-dev-logs"

  tags = {
    Service = "platform"
  }
}