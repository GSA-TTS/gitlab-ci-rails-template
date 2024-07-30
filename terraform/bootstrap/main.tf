locals {
  s3_service_name = "rtci-terraform-state"
}

module "s3" {
  source = "github.com/gsa-tts/terraform-cloudgov//s3?ref=v1.0.0"

  cf_org_name   = "gsa-tts-devtools-prototyping"
  cf_space_name = "rtci-prod"
  name          = local.s3_service_name
}

resource "cloudfoundry_service_key" "bucket_creds" {
  name             = "${local.s3_service_name}-access"
  service_instance = module.s3.bucket_id
}

output "bucket_credentials" {
  value     = cloudfoundry_service_key.bucket_creds.credentials
  sensitive = true
}
