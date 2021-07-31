#!/bin/bash

set -e
LIB_PATH="../.resources/libs/"
RES_PATH="../.resources/EX3/"

# initializes the exercise
ex_init () {
  if [ -d ".git" ]; then
    ex_clean
  fi
  git init
  cp "${RES_PATH}octocats_init.md" octocats.md
  git add .
  git commit -m "init commit"
  git checkout -b secondary
  cp "${RES_PATH}octocats_mod_0.md" octocats.md
  git commit -am "add relatives (secondary)"
  git checkout main
  cp "${RES_PATH}octocats_mod_1.md" octocats.md
  git commit -am "change friends (main)"
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
  cd EX3
}

# print exercise hint
ex_hint () {
  printf "%bExercise hint:\\n%b" "${YELLOW}" "${NC}"
  printf "%bUse the git status and git branch command to examine the repository.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%bUse git checkout to navigate between branches and check for its contents.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%bUse git merge in main branch to merge changes from secondary into main.\\n%b" "${LIGHT_BLUE}" "${NC}"
  exit 0
}

SCRIPT_PATH=$(pwd)
source "${LIB_PATH}terminal_color.sh"

# error handling for input parameter
if [ "$#" -gt 1 ]; then
  printf "%bMore arguments given than required. Ignoring all but the first.%b\\n" "${YELLOW}" "${NC}"
fi

cd "${LIB_PATH}" || exit 1
source ./arguments.sh ${1}
cd "${SCRIPT_PATH}" || exit 1

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
