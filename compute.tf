resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = oci_identity_compartment.tf-compartment.id
    shape = "VM.Standard2.1"
    source_details {
        source_id = "ocid1.image.oc1.me-abudhabi-1.aaaaaaaadls2segmkvuub7uem7jqgi3d5yy6jdsmvg2hwnoivhv3xtnlbicq"
        source_type = "image"
    }

    # Optional
    display_name = "test-ubuntu-instance"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("/home/samy/Downloads/my-keys/ssh-key.pub")
    } 
    preserve_boot_volume = false
}