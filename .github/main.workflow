workflow "lint" {
  on = "push"
  resolves = "filter clean trees"
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
