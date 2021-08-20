terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
    token = "5f1eb0972c8fd58d5f12b325db18e982b4b97a2e1330715c667898b61ce72c7c"
}

resource "linode_instance" "ubuntu_k8s" {
    label = "ubuntu_k8s"
    image = "linode/ubuntu18.04"
    region = "us-central"
    type = "g6-standard-1"
    authorized_keys = [{=authorized_keys}]
    root_pass = "RootPassword$4"
}
