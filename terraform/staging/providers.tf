terraform {
  required_version = "~> 1.0"
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.53.1"
    }
  }

  backend "s3" {
    bucket  = "cg-165831f4-b04b-4c24-8999-4257326bb3aa"
    key     = "terraform.tfstate.stage"
    encrypt = "true"
    region  = "us-gov-west-1"
  }
}

provider "cloudfoundry" {
  api_url      = "https://api.fr.cloud.gov"
  user         = var.cf_user
  password     = var.cf_password
  app_logs_max = 30
}
