terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "< 5"
    }
    github = {
      source  = "integrations/github"
      version = "< 7"
    }
  }

  required_version = "< 2"
}
