variable "github_owner" {
  type     = string
  nullable = false
}

variable "commit_name" {
  type    = string
  default = "Kubernetes Cluster"
}

variable "commit_email" {
  type    = string
  default = "github-actions[bot]@users.noreply.github.com"
}

variable "algorithm" {
  type    = string
  default = "RSA"
}

variable "rsa_bits" {
  type    = number
  default = 4096
}
