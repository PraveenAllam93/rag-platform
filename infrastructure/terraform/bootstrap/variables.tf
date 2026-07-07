#     Input variables

variable "aws_region" {
  description = "AWS region where resources will be created."

  type = string

  default = "ap-south-1"
}

variable "bucket_name" {
  description = "Terraform state bucket"

  type = string

  default = "rag-platform-tfstate-praveenallam"
}

variable "project_name" {
  description = "Project name"

  type = string

  default = "rag-platform"
}

variable "environment" {
  description = "Deployment environment"

  type = string

  default = "bootstrap"
}