output "db_system_id" {
  description = "OCID of the database system"
  value       = oci_database_db_system.db_system.id
}

output "db_system_state" {
  description = "State of the database system"
  value       = oci_database_db_system.db_system.lifecycle_state
}

output "db_system_url" {
  description = "URL of the database system"
  value       = oci_database_db_system.db_system.connection_strings
}
