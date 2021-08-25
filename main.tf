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
    root_pass = var.rootpassword
  
    connection {
      type  = "ssh"
      user  = "root"
      password = var.rootpassword
      host  = self.ip_address
    }
  
    provisioner "file" {
      source      = "install_powershell.sh"
      destination = "/tmp/install_powershell.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_powershell.sh",
      "/tmp/install_powershell.sh",
      ]
    }
  
    provisioner "file" {
      source      = "mount_disk.sh"
      destination = "/tmp/mount_disk.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/mount_disk.sh",
      "/tmp/mount_disk.sh",
      ]
    }
  
    provisioner "file" {
      source      = "install_ansible.sh"
      destination = "/tmp/install_ansible.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_ansible.sh",
      "/tmp/install_ansible.sh",
      ]
    } 
  
    provisioner "file" {
      source      = "install_microk8s.sh"
      destination = "/tmp/install_microk8s.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_microk8s.sh",
      "/tmp/install_microk8s.sh",
      ]
    }
  

    provisioner "file" {
      source      = "install_cockpit.sh"
      destination = "/tmp/install_cockpit.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_cockpit.sh",
      "/tmp/install_cockpit.sh",
      ]
    }
  
     provisioner "file" {
      source      = "install_code_server.sh"
      destination = "/tmp/install_code_server.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_code_server.sh",
      "/tmp/install_code_server.sh",
      ]
    }
  
    provisioner "file" {
      source      = "install_azurecli.sh"
      destination = "/tmp/install_azurecli.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/install_azurecli.sh",
      "/tmp/install_azurecli.sh",
      ]
    }
  
     provisioner "file" {
      source      = "enable_ufw.sh"
      destination = "/tmp/enable_ufw.sh"
    }
  
    provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/enable_ufw.sh",
      "/tmp/enable_ufw.sh",
      ]
    }
  
}


