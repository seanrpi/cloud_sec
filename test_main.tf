terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "random" {}

variable "pet_name"{
  type = number
  description =" The length of the pet name to be generated."
}

resource "random_pet" "my_pet" {
  length = var.pet_name
}

output "pet_name" {
  value = random_pet.my_pet.id
}
