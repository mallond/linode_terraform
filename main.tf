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
  provisioner "local-exec" {
    command = <<EOT
      snap install microk8s --classic --channel=1.21/stable
      microk8s status --wait-ready
      microk8s enable dashboard dns registry helm ingress
      snap alias microk8s.kubectl kubectl    
      usermod -a -G microk8s root
      chown -f -R cloud_user ~/.kube
    EOT
  }
}


