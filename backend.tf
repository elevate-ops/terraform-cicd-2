# The block below configures Terraform to use the 'remote' backend with Terraform Cloud.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  cloud {
    organization = "Elevate_Ops"

    workspaces {
      project = "medium-articles"
      name    = "terraform-cicd-2"
    }
  }

  required_version = ">= 1.7.4"
}
