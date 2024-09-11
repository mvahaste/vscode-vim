# Compile and run java file
function j() {
    # If no arguments are given, print explanation
    if [ $# -eq 0 ]; then
        echo "Compile and run Java file with optional arguments. Don't include the extension in the file name."
        echo "Usage: j <filename without extension> <arguments>"
        return
    fi

    javac $1.java && java $1 $2
}

# Lazy git add, commit and push
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

# Oh-my-posh
eval "$(oh-my-posh init bash --config C:/Users/<user>/Dev/huvix.omp.json) $(zoxide init bash --cmd cd)"
