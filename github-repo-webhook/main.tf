resource "random_password" "this" {
  length  = var.secret_length
  special = false
}

resource "github_repository_webhook" "this" {
  repository = var.repository

  configuration {
    url          = var.webhook_url
    content_type = var.content_type
    secret       = random_password.this.result
    insecure_ssl = false
  }

  active = true

  events = var.events
}
