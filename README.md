# terraform-cicd-2

This is an example Infrastructure as Code (IaC) project showcasing CI/CD automation of
infrastructure provisioning. The following tools/technologies have been used:

- [GitHub](https://www.github.com) as a VCS
- [GitHub Actions](https://docs.github.com/en/actions) as a CI/CD tool
- [Terraform](https://www.terraform.io/) as main IaC tool
- [Terraform Cloud](https://app.terraform.io) for [terraform state](https://developer.hashicorp.com/terraform/language/state) management
- [Renovate](https://github.com/renovatebot/renovate) for automatic version updates
- [Infracost](https://www.infracost.io) for infrastructure cost calculation
- [Trivy](https://github.com/aquasecurity/trivy) as static security analysis tool for the terraform code
- [tflint](https://github.com/terraform-linters/tflint) as a terraform code linter

[Terraform Cloud](https://github.com/apps/terraform-cloud), [Renovate](https://github.com/apps/renovate) and
[Infracost](https://github.com/marketplace/actions/infracost-actions) are integrated as [GitHub Apps](https://docs.github.com/en/apps/overview).

The setup will be ideal for startup projects with scarce time and money resources.

**Please note that currently apply fails because aws provider is not configured properly. The failed resources can
be ignored. They are added only for Infracost demonstration.**
