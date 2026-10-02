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
  ]

  secrets = [
    {
      name = "CLOUDFLARE_CONFIG"
      # encrypted-value = base64encode(jsonencode("cloudflare-config = ${var.cloudflare-config}"))
      plaintext-value = "cloudflare-config=${jsonencode(var.cloudflare-config)}"
    }
  ]
}
