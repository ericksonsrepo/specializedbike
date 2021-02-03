resource "oci_database_db_system" "test_db_system" {
  availability_domain = lookup(data.oci_identity_availability_domains.ads.availability_domains[0],"name")
  compartment_id      = var.compartment_ocid
  database_edition    = var.db_edition

  db_home {
    database {
      admin_password = var.db_admin_password
      db_name        = "aTFdbVm"
      character_set  = var.character_set
      ncharacter_set = var.n_character_set
      db_workload    = var.db_workload
      pdb_name       = var.pdb_name

      db_backup_config {
        auto_backup_enabled = true
      }
    }

    db_version   = var.db_version
    display_name = "MyTFDBHomeVm"
  }

  db_system_options {
    storage_management = "LVM"
  }
// Licensed under the Mozilla Public License v2.0

  disk_redundancy         = var.db_disk_redundancy
  shape                   = var.db_system_shape
  subnet_id               = "ocid1.subnet.oc1.iad.aaaaaaaat75zlsl5nvcbxjemd2hrlkuek2fi6wbb3xg4rid4l5gxelcuibpq"
  nsg_ids                 = ["ocid1.networksecuritygroup.oc1.iad.aaaaaaaab4ss6nqtjoslll4qlar4mnokhsdh7sbcx2x7b6plogizjjsx7xiq", "ocid1.networksecuritygroup.oc1.iad.aaaaaaaaj72r4r7tnmirahkj6agmjon66gbnh2np6uhkpqnmvqw3khgihtwq"]
  ssh_public_keys         = [var.ssh_public_key]
  display_name            = "MyTFDBSystemVM"
  hostname                = var.hostname
  data_storage_size_in_gb = var.data_storage_size_in_gb
  license_model           = var.license_model
  node_count              = data.oci_database_db_system_shapes.test_db_system_shapes.db_system_shapes[0]["minimum_node_count"]

  #To use defined_tags, set the values below to an existing tag namespace, refer to the identity example on how to create tag namespaces
  #defined_tags  = {"${oci_identity_tag_namespace.tag-namespace1.name}.${oci_identity_tag.tag1.name}" = "value"}

  freeform_tags = {
    "Department" = "Finance"
  }
}


