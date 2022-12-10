resource "github_branch_protection" "this" {
  for_each = { for repo in local.repos : repo.name => repo }

  pattern                         = "main"
  repository_id                   = each.key
  require_conversation_resolution = true
  require_signed_commits          = true
  required_linear_history         = true

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    dismissal_restrictions     = []
    pull_request_bypassers     = []
    require_code_owner_reviews = true
    require_last_push_approval = true
    restrict_dismissals        = false
  }

  depends_on = [
    github_repository.repos
  ]
}
