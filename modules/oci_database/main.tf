provider "oci" {
  region = var.region
}

resource "oci_database_db_system" "db_system" {
  availability_domain   = var.availability_domain
  compartment_id        = var.compartment_id
  display_name          = var.db_system_display_name
  shape                 = var.shape
  database_edition      = var.database_edition
  data_storage_size_in_gbs = var.data_storage_size_in_gbs

  node_count = var.node_count

  storage_management = var.storage_management

  db_home {
    database {
      admin_password = var.admin_password
      db_name        = var.db_name
      character_set  = var.character_set
      ncharacter_set = var.ncharacter_set
      db_workload    = var.db_workload
    }

    db_version = var.db_version
  }

  backup_network_nsg_ids = var.backup_network_nsg_ids
  subnet_id              = var.subnet_id
  ssh_public_keys        = var.ssh_public_keys
}

