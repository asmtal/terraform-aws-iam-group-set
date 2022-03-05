variable "groups" {
  type = map(object({
    allowed_roles    = list(string)
    policy_documents = list(string)
    require_mfa      = bool
  }))
  description = "Map of groups to create"
}
variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default environmental context"
}
