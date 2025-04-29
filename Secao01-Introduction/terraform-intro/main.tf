terraform {
  required_providers {
    null = {
        source = "hashicorp/null"
        version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "exemplo" {
  provisioner "local-exec" {
    command = "echo 'Hello Terraform! Teste concluido com sucesso"
  }
}