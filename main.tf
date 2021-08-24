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
  
    // copy our example script to the server
    provisioner "file" {
      source      = "local-exec.sh"
      destination = "local-exec.sh"
    }

    // change permissions to executable and pipe its output into a new file
    provisioner "remote-exec" {
      inline = [
      "chmod +x local-exec.sh",
      "./local-exec.sh",
      ]
    }
}


