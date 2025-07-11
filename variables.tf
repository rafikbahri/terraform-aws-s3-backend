variable "tags" {
  type = map(any)
  default = {
    "ManagedBy" = "terraform"
  }
  description = "Tags to apply to all resources created by this module"
}
