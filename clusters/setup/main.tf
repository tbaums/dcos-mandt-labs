# Used to determine your public IP for forwarding rules
data "http" "whatismyip" {
  url = "http://whatismyip.akamai.com/"
}

provider "aws" {
 region = "us-east-1"
}

module "dcos" {
  source = "dcos-terraform/dcos/aws"

  dcos_instance_os    = "centos_7.5"
  cluster_name        = "ws-cluster" 
  ssh_public_key_file = "workshop.id_rsa.pub"
  admin_ips           = ["0.0.0.0/0"]

  num_masters        = "1"
  num_private_agents = "4"
  num_public_agents  = "1"

  bootstrap_instance_type = "t2.medium"
  public_agents_instance_type = "m5.xlarge"
  private_agents_instance_type = "c5.4xlarge"
  masters_instance_type = "m5.xlarge"
  dcos_version = "1.12.1"

  # dcos_variant = "open"
  dcos_variant = "ee"
  dcos_license_key_contents = "${file("license.txt")}"

  tags = {workshop = "MTBank"} 

  public_agents_additional_ports = ["6443", "7443", "3000", "9090", "9093", "9091", "30443"]
}

output "masters-ips" {
  value = "${module.dcos.masters-ips}"
}

output "cluster-address" {
  value = "${module.dcos.masters-loadbalancer}"
}

output "public-agents-loadbalancer" {
  value = "${module.dcos.public-agents-loadbalancer}"
}