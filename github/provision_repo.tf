variable "github_token" {}
variable "github_organization" {}


provider "github" {
  token        = "${var.github_token}"
  organization = "automationfactory"
}

resource "github_repository" "newrepo-sample" {
  name        = "ganeshhp/newrepo-sample"
  description = "My awesome codebase"

  private = false
}

