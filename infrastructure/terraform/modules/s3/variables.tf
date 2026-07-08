variable "bucket_name" {
  description = "Globally unique name of the S3 bucket."
  type        = string

  validation {
    condition = (
      length(trimspace(var.bucket_name)) >= 3 &&
      length(trimspace(var.bucket_name)) <= 63
    )

    error_message = "Bucket name must be between 3 and 63 characters."
  }
}

variable "versioning_enabled" {
  description = "Enable S3 bucket versioning."

  type = bool

  default = true
}

variable "force_destroy" {
  description = "Allow Terraform to delete a non-empty bucket."

  type = bool

  default = false
}

variable "lifecycle_days" {
  description = "Delete objects after this many days. Null disables lifecycle expiration."
  
  type = number

  default = null
}

variable "tags" {
  description = "Additional tags applied to the bucket."

  type = map(string)

  default = {}
}

