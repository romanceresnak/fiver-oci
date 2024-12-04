data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

module "oci_database" {
  source = "./modules/oci_database"

  region                  = "us-ashburn-1"
  availability_domain     = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id          = var.compartment_id
  db_system_display_name  = "my-database-system"
  shape                   = "VM.Standard2.1"
  database_edition        = "ENTERPRISE_EDITION"
  data_storage_size_in_gbs = 256
  node_count              = 1
  storage_management      = "ASM"
  admin_password          = "YourAdminPassword1!"
  db_name                 = "CCO"
  character_set           = "AL32UTF8"
  ncharacter_set          = "AL16UTF16"
  db_workload             = "OLTP"
  db_version              = "19.24.0.0"
  backup_network_nsg_ids  = []
  subnet_id               = "ocid1.subnet.oc1..example"
  ssh_public_keys         = ["ssh-rsa AAAAB3..."]
}
