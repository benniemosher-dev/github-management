variable "config" {
  description = "The config for your organization in Github."
  type = object({
    description      = optional(string, "Managed by Terraform.")
    domain           = string
    location         = optional(string, null)
    twitter-username = optional(string, null)
    org-name         = string
  })
}

variable "github-config" {
  description = "The config for connecting to Github."
  type = object({
    token = string
  })
}
