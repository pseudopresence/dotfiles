if [ -n "${BASH_VERSION}" ]; then
    # include ~/.bashrc if it exists
    if [ -f "${HOME}/.bashrc" ]; then
        . "${HOME}/.bashrc"
    fi
fi


# . /Users/cswetenham/src/torch/install/bin/torch-activate

# added by Anaconda3 4.1.1 installer
export PATH="/Users/cswetenham/anaconda/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
