resource "aws_s3_bucket_lifecycle_configuration" "this" {
  count = local.lifecycle_enabled ? 1 : 0

  bucket = aws_s3_bucket.this.id

  rule {
    id     = "expire-objects"
    status = "Enabled"

    filter {}

    expiration {
      days = var.lifecycle_days
    }
  }
}