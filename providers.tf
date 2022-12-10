terraform {
  required_version = "~> 1.3"

  cloud {
    organization = "benniemosher-dev"
    workspaces {
      name = "github-management"
    }
  }
}
