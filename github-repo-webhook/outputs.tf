output "secret_value" {
  value     = try(random_password.this[0].result, null)
  sensitive = true
}
