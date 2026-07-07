# Infrastructure modules will be added here.

module "documents_bucket" {
  source = "../../modules/s3"

  bucket_name = "rag-platform-dev-documents"

  tags = {
    Service = "upload-api"
  }
}

module "processed_bucket" {
  source = "../../modules/s3"

  bucket_name = "rag-platform-dev-processed"

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