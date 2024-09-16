# Compile and run java file with arguments
function jcr() {
    # If no arguments are given, print explanation
    if [ $# -eq 0 ]; then
        echo "Compile and run Java file with optional arguments. Don't include the extension in the file name."
        echo "Usage: jcr <filename> <arguments>"
        echo "Example: jcr Multiply 2 3"
        return
    fi

    # Remember the first argument as the filename
    local filename=$1

    # Shift the arguments, $@ now contains all arguments except the first one
    shift

    javac $filename.java && java $filename $@
}

# Lazy git add, commit and push with message
function lazygit() {
    # If no arguments are given, print explanation
    if [ $# -eq 0 ]; then
        echo "Lazily add, commit and push all changes to the repository."
        echo "Usage: lazygit <message>"
        echo "Example: lazygit \"Initial commit\""
        return
    fi

    git add .
    git commit -a -m "$1"
    git push
}

# Oh-my-posh
eval "$(oh-my-posh init bash --config C:/Users/<user>/Dev/huvix.omp.json) $(zoxide init bash --cmd cd)"
