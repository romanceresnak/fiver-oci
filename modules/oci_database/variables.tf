variable "region" {
  description = "OCI region"
  type        = string
}

variable "availability_domain" {
  description = "Availability domain of the database system"
  type        = string
}

variable "compartment_id" {
  description = "Compartment OCID where the database system will be created"
  type        = string
}

variable "db_system_display_name" {
  description = "Display name of the database system"
  type        = string
}

variable "shape" {
  description = "Shape of the database system"
  type        = string
}

variable "database_edition" {
  description = "Database edition"
  type        = string
}

variable "data_storage_size_in_gbs" {
  description = "Total storage size in GBs"
  type        = number
}

variable "node_count" {
  description = "Number of nodes in the database system"
  type        = number
  default     = 1
}

variable "storage_management" {
  description = "Type of storage management"
  type        = string
}

variable "admin_password" {
  description = "Database admin password"
  type        = string
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "character_set" {
  description = "Character set for the database"
  type        = string
}

variable "ncharacter_set" {
  description = "National character set for the database"
  type        = string
}

variable "db_workload" {
  description = "Database workload type (e.g., OLTP, DSS)"
  type        = string
}

variable "db_version" {
  description = "Version of the database"
  type        = string
}

variable "backup_network_nsg_ids" {
  description = "Network security group IDs for backup"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "Subnet ID for the database system"
  type        = string
}

variable "ssh_public_keys" {
  description = "List of SSH public keys for the database system"
  type        = list(string)
}

