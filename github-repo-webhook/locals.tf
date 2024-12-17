locals {
  create_secret = var.secret_phrase == "" ? true : false
}
