terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
    token = var.token
}

resource "linode_instance" "ubuntu_k8s" {
    label = "ubuntu_k8s"
    image = "linode/ubuntu18.04"
    region = "us-central"
    type = "g6-standard-1"
    authorized_keys = [""]
    root_pass = "RootPassword$4"
}
