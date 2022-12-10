variable "github-config" {
  description = "The config for connecting to Github."
  type = object({
    token = string
  })
}
