
variable "ssh_public_keys" {
  description = "List of public SSH keys for the database system"
  type        = list(string)
}
