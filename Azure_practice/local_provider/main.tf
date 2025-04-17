# Configuration using provider functions must include required_providers configuration.
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      # Setting the provider version is a strongly recommended practice
      # version = "..."
    }
  }
  # Provider functions require Terraform 1.8 and later.
  required_version = ">= 1.8.0"
}



resource "local_file" "test" {
  content  = "hello terraform..!!"
  filename = "abc.txt"
}

resource "local_file" "test1" {
  content  = "hello terraform"
  filename = "testfile.txt"
}



#terraform validate
#terraform init
#terraform plan
#terraform apply
#terraform destory