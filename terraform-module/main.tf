terraform {
  required_version = ">= 1.5"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }

  backend "s3" {}
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "hello from ci-library-playground terraform module"
}
