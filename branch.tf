resource "github_branch_protection" "this" {
  for_each = { for repo in local.repos : repo.name => repo }

  pattern                         = "main"
  repository_id                   = each.key
  require_conversation_resolution = true
  require_signed_commits          = true
  required_linear_history         = true

  # No approval required: one maintainer plus Renovate, whose pin and
  # minor/patch PRs need to merge automatically once CI passes.
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  depends_on = [
    github_repository.repos
  ]
}
