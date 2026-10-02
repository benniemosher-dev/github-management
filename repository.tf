# TOOD: Change all of our repos to private to protect IP
# tfsec:ignore:github-repositories-private
resource "github_repository" "repos" {
  for_each = { for repo in local.repos : repo.name => repo }

  # On by default so Renovate can merge pin and minor/patch PRs once CI passes.
  allow_auto_merge       = try(each.value.allow-auto-merge, true)
  allow_merge_commit     = try(each.value.allow-merge-commit, false)
  allow_rebase_merge     = try(each.value.allow-rebase-commit, false)
  allow_squash_merge     = try(each.value.allow-squash-merge, true)
  allow_update_branch    = try(each.value.allow-update-branch, true)
  archived               = try(each.value.archived, false)
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

  # The renovate topic is how the self-hosted Renovate CronJobs opt a repo in
  # (RENOVATE_AUTODISCOVER_TOPICS). Every repo gets it unless it sets renovate = false.
  topics = distinct(concat(
    try(each.value.topics, []),
    try(each.value.renovate, true) ? ["renovate"] : [],
  ))
  visibility           = try(each.value.visibility, "public")
  vulnerability_alerts = try(each.value.vulnerability-alerts, true)

  # lifecycle {
  #   ignore_changes = [
  #     template
  #   ]
  # }
}
