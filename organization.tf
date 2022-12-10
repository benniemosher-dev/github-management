resource "github_organization_settings" "organizations" {
  advanced_security_enabled_for_new_repositories               = false
  billing_email                                                = "github@${var.config.domain}"
  blog                                                         = "https://${var.config.domain}"
  company                                                      = var.config.org-name
  default_repository_permission                                = "read"
  dependabot_alerts_enabled_for_new_repositories               = true
  dependabot_security_updates_enabled_for_new_repositories     = true
  dependency_graph_enabled_for_new_repositories                = true
  description                                                  = var.config.description
  email                                                        = "github@${var.config.domain}"
  has_organization_projects                                    = false
  has_repository_projects                                      = false
  location                                                     = var.config.location
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = false
  members_can_create_private_pages                             = false
  members_can_create_private_repositories                      = true
  members_can_create_public_pages                              = false
  members_can_create_public_repositories                       = true
  members_can_create_repositories                              = true
  members_can_fork_private_repositories                        = true
  name                                                         = var.config.org-name
  secret_scanning_enabled_for_new_repositories                 = true
  secret_scanning_push_protection_enabled_for_new_repositories = true
  twitter_username                                             = var.config.twitter-username
  web_commit_signoff_required                                  = true

  # TODO: Make these respect the values on apply
  lifecycle {
    ignore_changes = [
      secret_scanning_enabled_for_new_repositories,
      secret_scanning_push_protection_enabled_for_new_repositories
    ]
  }
}
