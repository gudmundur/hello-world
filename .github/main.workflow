workflow "lint" {
  on = "push"
  resolves = "commit and push"
}

action "yarn install" {
  uses = "nuxt/actions-yarn@master"
  args = "install"
}

action "run standard" {
  needs = "yarn install"
  uses = "nuxt/actions-yarn@master"
  args = "run standard --fix"
}

action "filter clean trees" {
  needs = "run standard"
  uses = "./.github/filter-clean-trees"
}

action "commit and push" {
  needs = "filter clean trees"
  uses = "./.github/commit-and-push"
  secrets = [
    "GITHUB_TOKEN"
  ]
}
