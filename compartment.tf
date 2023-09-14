resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaawx6pbtjldf6cnewngzjvcuermrwrwezyymibrv7yzx6wdrbk7vza"
    description = "Compartment for Terraform resources."
    name = "infra1-compartment"
}
