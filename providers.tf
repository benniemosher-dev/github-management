terraform {
  required_version = "~> 1.3"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.9"
    }
  }

  cloud {
    organization = "benniemosher-dev"
    workspaces {
      name = "github-management"
    }
  }
}

provider "github" {
  token = var.github-config.token
  owner = var.config.org-name
}
