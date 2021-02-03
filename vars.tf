variable "tenancy_ocid" {
}

variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaaky5xvul54hpba6n7himf333qsisgfo7pwmnnj5hef5a4o7ujlxsq"
}

variable "ssh_public_key"{
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAQ6+sWcTzIhu1BeVHJq8pjMX3d9Qr19g993OHOYy8y0hG4F3kn7ZSFtVq0BpVvYTFIRL48HKQk7+qwBvwIItf4jrELnOj+fbuCk7GSU4v9861iWK8EY95Vbocdkt2oU/0pnQxL7j1wS97a0dFeY2XMfxmDmvkfzofozG5ouD0KYKVzdsnkxFbI0pEcmEV2C2pd2lHT7ysWDJfaUSP9bWiA9WwS3tnGV/kBBYU026igdjcmAcmrzu8QNhDHOorxZ9z0SLj8lzOFGGPx2tyeBPSqBBWz+wR4TP/4THT1gjlP0gJ7XEjrlnWOST4huZXtiw3JUuyDNDRxN8y32twfRdz opc@lyft-oci-cli"
}

# DBystem specific
variable "db_system_shape" {
  default = "VM.Standard2.1"
}

variable "db_edition" {
  default = "ENTERPRISE_EDITION"
}

variable "db_admin_password" {
  default = "BEstrO0ng_#12"
}

variable "db_version" {
  default = "19.0.0.0"
}

variable "db_disk_redundancy" {
  default = "NORMAL"
}

variable "sparse_diskgroup" {
  default = true
}

variable "hostname" {
  default = "myoracledb"
}

variable "host_user_name" {
  default = "opc"
}

variable "n_character_set" {
  default = "AL16UTF16"
}

variable "character_set" {
  default = "AL32UTF8"
}

variable "db_workload" {
  default = "OLTP"
}

variable "pdb_name" {
  default = "pdbName"
}

variable "data_storage_size_in_gb" {
  default = "256"
}

variable "license_model" {
  default = "LICENSE_INCLUDED"
}

variable "node_count" {
  default = "2"
}

variable "backup_display_name" {
  default = "dbtest_bkup"
}
