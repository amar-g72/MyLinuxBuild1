terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "2.5.2"
    }
  }
}

provider "linode" {
  token = "d1733e309ab888356f8f59cca445f9820bdaa70f8deeb76a5322fc617f4bdfe9"
}

resource "linode_instance" "terraform-web" {
        image = "linode/Debian12"
        label = "Terraform-Web-Example"
        group = "Terraform"
        region = "gb-lon-2"
        type = "g6-standard-1"
        authorized_keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICUaCaDXzId4TP2BEuwJa/PincaKYK7yqXzwoCyKXv6u amar@debian" ]
        root_pass = "YOUR_ROOT_PASSWORD"
}
