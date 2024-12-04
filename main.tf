data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

# Fetch the VCN ID by its display name
data "oci_core_vcns" "vcns" {
  compartment_id = var.compartment_id
}

data "oci_core_vcn" "vcn" {
  compartment_id = var.compartment_id
  vcn_id         = data.oci_core_vcns.vcns.vcns[0].id
}

# Fetch the subnets in the VCN
data "oci_core_subnets" "subnets" {
  compartment_id = var.compartment_id
  vcn_id         = data.oci_core_vcn.vcn.id
}

data "local_file" "ssh_public_key" {
  filename = var.ssh_key_path
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
  subnet_id               = data.oci_core_subnets.subnets.subnets[0].id
  ssh_public_keys         = [data.local_file.ssh_public_key.content]
}
