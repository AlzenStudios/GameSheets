#!/bin/bash

VERBOSE=false
INIT_REPO=""
FILES_TO_ADD=""
COMMIT_MESSAGE=""

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --init)
            INIT_REPO=$2
            shift 2
            ;;
        --push)
            FILES_TO_ADD=$2
            shift 2
            ;;
        --commit)
            COMMIT_MESSAGE=$2
            shift 2
            ;;
        --verbose=true)
            VERBOSE=true
            shift
            ;;
        *)
            echo "❌ Unknown argument: $1"
            exit 1
            ;;
    esac
done

# Handle --init <repo>
if [ -n "$INIT_REPO" ]; then
    if [ "$VERBOSE" = true ]; then echo "🚀 Initializing Git repository..."; fi
    git init
    git remote add origin "$INIT_REPO"
    echo "✅ Repository initialized at: $INIT_REPO"
    exit 0
fi

# Handle --push <files> --commit <message>
if [ -z "$FILES_TO_ADD" ] || [ -z "$COMMIT_MESSAGE" ]; then
    echo "❌ Usage: ./gitpro.sh --push <files_to_add> --commit \"Your commit message\" [--verbose=true]"
    exit 1
fi

# Execute Git commands
if [ "$VERBOSE" = true ]; then echo "📌 Adding files: $FILES_TO_ADD"; fi
git add $FILES_TO_ADD

if [ "$VERBOSE" = true ]; then echo "📝 Committing changes: \"$COMMIT_MESSAGE\""; fi
git commit -m "$COMMIT_MESSAGE"

if [ "$VERBOSE" = true ]; then echo "🚀 Pushing to main branch..."; fi
git push origin main

if [ "$VERBOSE" = true ]; then echo "✅ Push completed!"; fi
