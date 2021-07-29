#!/bin/bash

set -e

# initializes the exercise
ex_init () {
  if [ -d ".git" ]; then
    ex_clean
  fi
  git init
  cp ../.resources/EX2/octocats_init.md octocats.md
  git add .
  git commit -m "init commit"
  cp ../.resources/EX2/octocats_mod_0.md octocats.md
  git commit -am "add relatives"
  cp ../.resources/EX2/octocats_mod_1.md octocats.md
  git commit -am "change friends"
}

# resets the exercise
ex_reset () {
  ex_clean
  ex_init
  exit 0
}

# clean up all changes
ex_clean () {
  rm -rf .git
  cd ..
  git checkout .
  git clean -df
  cd EX2
}

# print exercise hint
ex_hint () {
  printf "%bExercise hint:\\n%b" "${YELLOW}" "${NC}"
  printf "%bUse the git status and git log command to examine the repository contents.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%bUse git branch and git checkout to create and switch to a new branch.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%bDo some changes and commit these changes. Checkout to the main branch and check for your changes.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%b(Optional) Create a commit in main and check your branch for these changes.\\n%b" "${LIGHT_BLUE}" "${NC}"
  exit 0
}

SCRIPT_PATH=$(pwd)
source ../terminal_color.sh

# error handling for input parameter
if [ "$#" -gt 1 ]; then
  printf "%bMore arguments given than required. Ignoring all but the first.%b\\n" "${YELLOW}" "${NC}"
fi

cd .. || exit 1
source ./arguments.sh ${1}
cd ${SCRIPT_PATH}

case ${ARGUMENT} in
  INIT)
  ex_init;;
  RESET)
  ex_reset;;
  "HINT")
  ex_hint;;
  *)
  printf "%bUnknown parameter ${ARGUMENT}. See gitctl.sh --help for details.%b\\n" "${RED}" "${NC}"
  exit 1
esac
