locals {
  repos = [
    {
      name        = ".github"
      description = "A ✨special ✨ repository for the public organization profile"
    },
    {
      name         = "benniemosher-com-infra"
      description  = "🏗 Infrastructure to support benniemosher.com. 🏗"
      homepage-url = "https://benniemosher.com"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-domain-concept"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "cli"
      description = "🧮 A cli to manage internal resources 🧮"
      topics = [
        "cli",
        "python",
      ]
    },
    {
      name        = "github-management"
      description = "🥋 TF managing our Github organization. 🥋"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-domain-concept"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "terraform-aws-cloudwatch-logs"
      description = "🪵 A TF module for AWS Cloudwatch Logs. 🪵"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "terraform-aws-ecr"
      description = "📦 A TF module for AWS ECR. 📦"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "terraform-aws-kms"
      description = "🗝️ A TF module for AWS encryption keys. 🗝️"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "terraform-aws-network"
      description = "🕸️ A TF module for AWS Networks. 🕸️"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "terraform-domain-concept"
      description = "🏕 A Terraform domain concept template. 🏕"
      is-template = true
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
      ]
    },
    {
      name        = "terraform-module"
      description = "🧱 A Terraform module template. 🧱"
      is-template = true
      topics = [
        "terraform",
      ]
    },
  ]
}