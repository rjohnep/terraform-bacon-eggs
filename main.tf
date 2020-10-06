variable "bacon" {
  description = "How good is it?"
}

module "cabbage" {
  source  = "./submodule"
  cabbage = "Better than ${var.bacon}"
}

resource "random_uuid" "this" {
  keepers = {
    bacon = var.bacon
  }
}

output "bacon-taste" {
  value = random_uuid.this.result
}

output "cabbage-taste" {
  value = module.cabbage.taste
}
