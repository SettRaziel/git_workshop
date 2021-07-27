#!/bin/bash

set -e

# clean the directory of all file
ex_reset () {
  rm -rf .git
  cd ..
  git checkout .
  git clean -df
  exit 0
}

# print exercise hint
ex_hint () {
  printf "%bExercise hint:\\n%b" "${YELLOW}" "${NC}"
  printf "%bUse the git init command to create an empty repository.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%bAdd your created file(s) to the index and commit it.\\n%b" "${LIGHT_BLUE}" "${NC}"
  printf "%bCheck with git log, if you commited your file(s) by creating the first commit.\\n%b" "${LIGHT_BLUE}" "${NC}"
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
  "INIT")
  ex_reset;;
  "RESET")
  ex_reset;;
  "HINT")
  ex_hint;;
  *)
  printf "%bUnknown parameter ${ARGUMENT}. See gitctl.sh --help for details.%b\\n" "${RED}" "${NC}"
  exit 1
esac
