output "secret_value" {
  value     = random_password.this.result
  sensitive = true
}
