variable "bitbucket_pass" {}

provider "bitbucket" {
  username = "automationfactory"
  password = "$(var.bitbucket_pass)"
}

resource "bitbucket_repository" "newrepo" {
  owner = "ganesh palnitkar"
  name = "newrepo"
  is_private = "false"
}

