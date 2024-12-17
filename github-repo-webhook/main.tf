resource "random_password" "this" {
  count = local.create_secret ? 1 : 0

  length  = var.secret_length
  special = var.special
}

resource "github_repository_webhook" "this" {
  repository = var.repository

  configuration {
    url          = var.webhook_url
    content_type = var.content_type
    secret       = coalesce(try(random_password.this[0].result, null), var.secret_phrase)
    insecure_ssl = false
  }

  active = true

  events = var.events
}
