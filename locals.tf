locals {
  repos = [
    {
      name        = ".github"
      description = "A ✨special ✨ repository for the public organization profile"
      topics = [
        "github"
      ]
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
        "infrastructure-as-code"
      ]
    },
    {
      name        = "cli"
      description = "🧮 A cli to manage internal resources 🧮"
      # Archived. Matches its live settings, since an archived repo can't be edited.
      archived         = true
      allow-auto-merge = false
      topics = [
        "cli",
        "python",
      ]
    },
    {
      name        = "cloudflare-management"
      description = "🗿 TF managing our Cloudflare organization. 🗿"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-domain-concept"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code",
        "cloudflare"
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
        "infrastructure-as-code",
        "github"
      ]
    },
    {
      name        = "terraform-aws-acm"
      description = "🔖 A TF module for AWS ACM Certificates. 🔖"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code",
        "aws"
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
        "infrastructure-as-code",
        "aws"
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
        "infrastructure-as-code",
        "aws"
      ]
    },
    {
      name        = "terraform-aws-ecs"
      description = "⛺️ A TF module for AWS ECS. ⛺️"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code",
        "aws"
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
        "infrastructure-as-code",
        "aws"
      ]
    },
    {
      name        = "terraform-aws-loadbalancer"
      description = "⚖️ A TF module for AWS loadbalancers. ⚖️"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code",
        "aws"
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
        "infrastructure-as-code",
        "aws"
      ]
    },
    {
      name        = "terraform-aws-oidc"
      description = "🪪 A TF module for AWS IAM OIDC identity providers. 🪪"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-module"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code",
        "aws"
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
        "infrastructure-as-code"
      ]
    },
    {
      name        = "terraform-module"
      description = "🧱 A Terraform module template. 🧱"
      is-template = true
      topics = [
        "terraform",
        "infrastructure-as-code"
      ]
    },
    {
      name        = "tfcloud-management"
      description = "☁️ TF managing our TF Cloud organization. ☁️"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-domain-concept"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code"
      ]
    },
    {
      name        = "quest-infra"
      description = "🏔 Infrastructure to support the quest. 🏔"
      # Archived. Matches its live settings, since an archived repo can't be edited.
      archived         = true
      allow-auto-merge = false
      renovate         = false
      protection = {
        require-code-owner-reviews      = true
        require-last-push-approval      = true
        required-approving-review-count = 1
      }
      homepage-url = "https://quest.benniemosher.dev"
      template = [{
        owner      = var.config.org-name
        repository = "terraform-domain-concept"
      }]
      topics = [
        "terraform",
        "infrastructure-as-code"
      ]
    },
  ]

  secrets = [
    {
      name = "CLOUDFLARE_CONFIG"
      # encrypted-value = base64encode(jsonencode("cloudflare-config = ${var.cloudflare-config}"))
      plaintext-value = "cloudflare-config=${jsonencode(var.cloudflare-config)}"
    }
  ]
}
