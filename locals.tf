locals {
  repos = [
    {
      name        = ".github"
      description = "A โจspecial โจ repository for the public organization profile"
      topics = [
        "github"
      ]
    },
    {
      name         = "benniemosher-com-infra"
      description  = "๐ Infrastructure to support benniemosher.com. ๐"
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
      description = "๐งฎ A cli to manage internal resources ๐งฎ"
      topics = [
        "cli",
        "python",
      ]
    },
    {
      name        = "cloudflare-management"
      description = "๐ฟ TF managing our Cloudflare organization. ๐ฟ"
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
      description = "๐ฅ TF managing our Github organization. ๐ฅ"
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
      description = "๐ A TF module for AWS ACM Certificates. ๐"
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
      description = "๐ชต A TF module for AWS Cloudwatch Logs. ๐ชต"
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
      description = "๐ฆ A TF module for AWS ECR. ๐ฆ"
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
      description = "โบ๏ธ A TF module for AWS ECS. โบ๏ธ"
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
      description = "๐๏ธ A TF module for AWS encryption keys. ๐๏ธ"
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
      description = "โ๏ธ A TF module for AWS loadbalancers. โ๏ธ"
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
      description = "๐ธ๏ธ A TF module for AWS Networks. ๐ธ๏ธ"
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
      description = "๐ชช A TF module for AWS IAM OIDC identity providers. ๐ชช"
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
      description = "๐ A Terraform domain concept template. ๐"
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
      description = "๐งฑ A Terraform module template. ๐งฑ"
      is-template = true
      topics = [
        "terraform",
        "infrastructure-as-code"
      ]
    },
    {
      name        = "tfcloud-management"
      description = "โ๏ธ TF managing our TF Cloud organization. โ๏ธ"
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
      name         = "quest-infra"
      description  = "๐ Infrastructure to support the quest. ๐"
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
