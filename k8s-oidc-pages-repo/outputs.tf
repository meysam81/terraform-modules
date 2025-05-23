output "repo_name" {
  value = random_pet.this.id
}

output "deploy_private_key" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}

output "github_pages_url" {
  value = github_repository.this.homepage_url
}

output "repository_ssh_url" {
  value = github_repository.this.ssh_clone_url
}
