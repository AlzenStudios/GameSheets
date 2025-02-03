#!/bin/bash

if [ "$1" == "--init" ]; then
    if [ -z "$2" ]; then
        echo "Error: No repository URL provided."
        exit 1
    fi
    git init
    git remote add origin "$2"
    echo "Initialized Git repository and added remote: $2"
    exit 0
fi

if [ "$1" == "--push" ]; then
    if [ -z "$2" ]; then
        echo "Error: No files specified to add."
        exit 1
    fi

    if [ "$3" != "--comment" ] || [ -z "$4" ]; then
        echo "Error: Missing commit message."
        exit 1
    fi

    git add $2
    git commit -m "$4"
    git push origin main
    echo "Changes pushed to main branch."
    exit 0
fi

echo "Usage:"
echo "  ./progit.sh --init <git_repo>"
echo "  ./progit.sh --push <files_to_add> --comment \"yourComment\""
exit 1
