resource "github_actions_organization_secret" "secrets" {
  for_each = { for secret in local.secrets : secret.name => secret }

  secret_name     = each.value.name
  visibility      = try(each.value.visibility, "all")
  encrypted_value = try(each.value.encrypted-value, null)
  plaintext_value = try(each.value.plaintext-value, null)
}

locals {
  secrets = [
    {
      name            = "CLOUDFLARE_CONFIG"
      encrypted-value = base64encode(jsonencode(var.cloudflare-config))
    }
  ]
}
