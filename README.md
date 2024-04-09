# terraform-cicd-2

This is an example Infrastructure as Code (IaC) project showcasing CI/CD automation of
infrastructure provisioning. The basic workflow is the following: when a PR is opened multiple
jobs will be triggered to check various aspects of the terraform code (syntax, security, added cost, etc.), after
the PR is merged plan/apply workflow will run. [GitHub environments](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment)
feature is used to get manual approval before applying the changes. The following tools/technologies have been used:

- [GitHub](https://www.github.com) as a VCS
- [GitHub Actions](https://docs.github.com/en/actions) as a CI/CD tool
- [Terraform](https://www.terraform.io/) as main IaC tool
- [Terraform Cloud](https://app.terraform.io) for [terraform state](https://developer.hashicorp.com/terraform/language/state) management
- [Renovate](https://github.com/renovatebot/renovate) for automatic version updates
- [Infracost](https://www.infracost.io) for infrastructure cost calculation
- [Trivy](https://github.com/aquasecurity/trivy) as static security analysis tool for the terraform code
- [tflint](https://github.com/terraform-linters/tflint) as a terraform code linter

[Terraform Cloud](https://github.com/apps/terraform-cloud) is used only as a backend for saving the state, [Renovate](https://github.com/apps/renovate) and
[Infracost](https://github.com/marketplace/actions/infracost-actions) are integrated as CLIs. Please see [Terraform CI/CD 1](https://github.com/elevate-ops/terraform-cicd-1)
where the tools are integrated as [Github Apps](https://docs.github.com/en/apps/overview).

The setup will be ideal for startup projects with scarce time and money resources who want to have less
dependency from external systems and more flexibility in their terraform workflow.
