#!/usr/bin/env bash
usage() {
    echo "$0 usage:" && grep " .)\ #" $0
    exit 0
}
[ $# -eq 0 ] && usage
while getopts ":hs:p:" arg; do
    case $arg in
    p) # Specify p value.
        echo "p is ${OPTARG}"
        ;;
    s) # Specify strength, either 45 or 90.
        strength=${OPTARG}
        [ $strength -eq 45 -o $strength -eq 90 ] &&
            echo "Strength is $strength." ||
            echo "Strength needs to be either 45 or 90, $strength found instead."
        ;;
    h | *) # Display help.
        usage
        exit 0
        ;;
    esac
done

echo "Welcome to git-manager"
