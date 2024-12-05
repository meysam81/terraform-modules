terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "< 7"
    }
    random = {
      source  = "hashicorp/random"
      version = "< 4"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "< 5"
    }
  }

  required_version = "< 2"
}
