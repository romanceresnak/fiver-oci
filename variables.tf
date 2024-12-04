variable "ssh_key_path" {
  description = "Path to the SSH public key file"
  type        = string
  default     = "~/.ssh/oci_rsa.pub"  # have to update to the path
}
