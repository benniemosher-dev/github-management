# TOOD: Change all of our repos to private to protect IP
# tfsec:ignore:github-repositories-private
resource "github_repository" "repos" {
  for_each = { for repo in local.repos : repo.name => repo }

  allow_auto_merge       = try(each.value.allow-auto-merge, false)
  allow_merge_commit     = try(each.value.allow-merge-commit, false)
  allow_rebase_merge     = try(each.value.allow-rebase-commit, false)
  allow_squash_merge     = try(each.value.allow-squash-merge, true)
  delete_branch_on_merge = try(each.value.delete-branch-on-merge, true)
  description            = each.value.description
  has_downloads          = try(each.value.has-downloads, false)
  has_issues             = try(each.value.has-issues, true)
  has_projects           = try(each.value.has-projects, false)
  has_wiki               = try(each.value.has-wiki, false)
  homepage_url           = try(each.value.homepage-url, null)
  is_template            = try(each.value.is-template, null)
  name                   = each.value.name

  dynamic "security_and_analysis" {
    for_each = try(each.value.security-and-analysis, [])

    content {
      advanced_security {
        status = "enabled"
      }

      secret_scanning {
        status = "enabled"
      }

      secret_scanning_push_protection {
        status = "enabled"
      }
    }
  }

  dynamic "template" {
    for_each = try(each.value.template, [])

    content {
      owner      = template.value.owner
      repository = template.value.repository
    }
  }

  topics               = try(each.value.topics, null)
  visibility           = try(each.value.visibility, "public")
  vulnerability_alerts = try(each.value.vulnerability-alerts, true)

  # lifecycle {
  #   ignore_changes = [
  #     template
  #   ]
  # }
}
