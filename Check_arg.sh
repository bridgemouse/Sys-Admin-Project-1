#!/bin/bash
mode="i"
user=0
nCheck="n"
iCheck="i"
if test -z "$1"; then
        echo "Please provide correct arguments and options"
        echo "Usage: ./check_arg.sh [-i|-n] [USERS]"
        echo -e "\tOptions (optional): -i or -n for interactive or non-interactive execution"
        echo -e "\tArguments: list of user names"
        echo -e "\tEvery user name must match this regular expression: '^[a-z][a-z0-9_]*$'"
        exit 0
fi
while getopts ":n :i" option; do
        case $option in
            n)
                mode="n"
                shift $(($OPTIND-1))
                ;;
            i)
                mode="i"
                shift $(($OPTIND-1))
                ;;
           *)
                break
                ;;
esac
done

while test -n "$1"; do
if [[ "$1" =~ ^[a-z][a-z0-9_]*$ ]]; then
        user=0
        shift
else
        user=1
        break
fi
done

if [[ $mode = $nCheck && $user = 1 ]]; then
        echo "ERR: option after an argument or wrong argument or wrong option 2: $1"
        echo "Please provide correct arguments and options"
        echo "Usage: ./check_arg.sh [-i|-n] [USERS]"
        echo -e "\tOptions (optional): -i or -n for interactive or non-interactive execution"
        echo -e "\tArguments: list of user names"
        echo -e "\tEvery user name must match this regular expression: '^[a-z][a-z0-9_]*$'"
        exit 1
elif [[ $mode = "i" && $user = 1 ]]; then
        echo "ERR: option after an argument or wrong argument or wrong option 2: $1"
        echo "Please provide correct arguments and options"
        echo "Usage: ./check_arg.sh [-i|-n] [USERS]"
        echo -e "\tOptions (optional): -i or -n for interactive or non-interactive execution"
        echo -e "\tArguments: list of user names"
        echo -e "\tEvery user name must match this regular expression: '^[a-z][a-z0-9_]*$'"
        exit 1
elif [[ $mode = $nCheck && $user = 0 ]]; then
        echo "Options and arguments okay"
        echo "running in NON-interactive mode"
        exit 0
elif [[ $mode = $iCheck && $user = 0 ]]; then
        echo "Options and arguments okay"
        echo "running in interactive mode"
        exit 0
fi