#    State management

terraform {
  backend "s3" {
    bucket       = "rag-platform-tfstate-praveenallam"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}