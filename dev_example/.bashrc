
# Source our conda 
source /Users/harmang/anaconda3/etc/profile.d/conda.sh

# Check if our environment exists 
env_exist=`conda env list | grep ".*zsh_env*." >/dev/null 2>/dev/null`

# If so activate it
if ${env_exist}; then
    conda activate zsh_env
else
    echo what
fi

# Print which python (should confirm env version)
echo `which python`
export python
export ipython

tmx() {
    tmux new-session -s $1 \; send-keys "vim "$2 Enter \; split-window -h \; send-keys "ls -lrt" Enter \; split-window -v \; send-keys "ipython" Enter
}

tmxa() {
    tmux attach-session -t $1
}

tmxk() {
    tmux kill-session -t $1
}

tmxl() {
    tmux list-sessions
}

