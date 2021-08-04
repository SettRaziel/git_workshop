#!/bin/bash

source ./terminal_color.sh

# error handling for input parameter
if [ "$#" -ne 1 ]; then
  printf "%bRequired parameter missing. See gitctl.sh --help for details.%b\\n" "${RED}" "${NC}"
  exit 1
fi

# default parameters
ARGUMENT="DEFAULT"

while [[ "$#" -gt 0 ]]; do
  case ${1} in
      --clean)
      ARGUMENT="CLEAN"; shift;;
      --init)
      ARGUMENT="INIT"; shift;;
      --reset)
      ARGUMENT="RESET"; shift;;
      --help)
      ARGUMENT="HELP"; shift;;
      --hint)
      ARGUMENT="HINT"; shift;;
      *)
      printf "%bUnknown parameter ${1}. See gitctl.sh --help for details.%b\\n" "${RED}" "${NC}"
      exit 1
  esac
done

if [ ${ARGUMENT} == "HELP" ]; then
  printf "%bscript usage:%b ./gitctl.sh parameter\\n" "${GREEN}" "${NC}"
  printf "%bscript parameter:\\n%b" "${YELLOW}" "${NC}"
  printf "%b --help      %b   show help text\\n" "${LIGHT_BLUE}" "${NC}"
  printf "%b --clean     %b   clean up the exercise and personal changes\\n" "${LIGHT_BLUE}" "${NC}"
  printf "%b --hint      %b   show hints for the current exercise\\n" "${LIGHT_BLUE}" "${NC}"
  printf "%b --init      %b   initialize the exercise\\n" "${LIGHT_BLUE}" "${NC}"
  printf "%b --reset     %b   reset the exercise\\n" "${LIGHT_BLUE}" "${NC}"
fi
