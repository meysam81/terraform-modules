variable "secret_length" {
  description = "The length of the webhook secret string"
  type        = number
  default     = 32
}

variable "repository" {
  description = "The repository to add the webhook to"
  type        = string
  nullable    = false
}

variable "webhook_url" {
  description = "The URL to send the webhook to"
  type        = string
  nullable    = false
}

variable "content_type" {
  description = "The content type of the webhook"
  type        = string
  default     = "json"
}

variable "events" {
  description = "The events to trigger the webhook"
  type        = list(string)
  default     = ["push"]
}
