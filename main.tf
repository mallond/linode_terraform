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
    image = var.image
    region = "us-west"
    type = var.type
    authorized_keys = ["ssh-rsa AAAA...Gw== user@example.local"]
    root_pass = "RootPassword$4"
  
    connection {
      type  = "ssh"
      user  = "root"
      password = "RootPassword$4"
      host  = self.ip_address
    }
  
    provisioner "file" {
      source      = "install_microk8s.sh"
      destination = "/tmp/install_microk8s.sh"
    }
  
    // change permissions to executable and pipe its output into a new file
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_microk8s.sh",
      "/tmp/install_microk8s.sh",
      ]
    }
}


