terraform {
  required_version = "1.16.4"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
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
