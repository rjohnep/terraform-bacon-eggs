variable "cabbage" {
  description = "How good is it?"
}

resource "random_uuid" "that" {
  keepers = {
    cabbage = var.cabbage
  }
}

output "taste" {
  value = random_uuid.that.result
}
