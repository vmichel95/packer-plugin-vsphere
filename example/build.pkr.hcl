packer {
  required_plugins {
    vsphere = {
      version = ">= v0.0.1"
      source  = "github.com/hashicorp/vsphere"
    }
  }
}

build {
  sources  = [
    "source.vsphere-iso.example"
  ]

  provisioner "shell-local" {
    inline  = ["echo the address is: $PACKER_HTTP_ADDR and build name is: $PACKER_BUILD_NAME"]
  }
}