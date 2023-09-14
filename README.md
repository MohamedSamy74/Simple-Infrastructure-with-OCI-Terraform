# Simple-Infrastructure-with-OCI-Terraform
Use Terraform to set up a simple infrastructure in your Oracle Cloud Infrastructure account

![Infrastructure diagram](https://github.com/MohamedSamy74/Simple-Infrastructure-with-OCI-Terraform/assets/44952687/ec8c39f4-e521-486d-98a3-fc255315c021)

# By running one apply command you will create the following resources:
- a compartment
- a virtual cloud network that includes: 
    a private subnet
    a public subnet
    a NAT gateway
    a Security List for the Private Subnet
    a Security List for the Public Subnet
    Ingress & egress Rules for the Private and Public Subnets
- a compute instance
