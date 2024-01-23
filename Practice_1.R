# install.packages('usethis')
library(usethis)

## Name, email
usethis::use_git_config(
  user.name = "Christopher Shin"
  user.email = "uqwe456@gmail.com"
)

## Setting: permanent storage
credentials::credential_helper_set("manager")


## create a personal access token for authentication
usethis::create_github_token()
