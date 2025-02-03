if [ "$1" == "--push" ]; then
    if [ -z "$2" ]; then
        echo "Error: No files specified to add."
        exit 1
    fi

    if [ "$3" != "--comment" ] || [ -z "$4" ]; then
        echo "Error: Missing commit message."
        exit 1
    fi

    git pull --rebase origin main
    git add $2
    git commit -m "$4"
    git push origin main
    echo "Changes pushed to main branch."
    exit 0
fi
