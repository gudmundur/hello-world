workflow "lint" {
  on = "push"
  resolves = "run standard"
}

action "yarn install" {
  uses = "nuxt/actions-yarn@master"
  args = "install"
}

action "run standard" {
  needs = "yarn install"
  uses = "nuxt/actions-yarn@master"
  args = "run standard"
}
