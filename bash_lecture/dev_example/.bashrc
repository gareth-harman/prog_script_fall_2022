
# Source our conda 
source /Users/harmang/anaconda3/etc/profile.d/conda.sh

# Check if our environment exists 
env_exist=`conda env list | grep ".*bash_env*." >/dev/null 2>/dev/null`

# If so activate it
if ${env_exist}; then
    conda activate bash_env
fi

# Print which python (should confirm env version)
echo `which python`

tmx() {
    tmux new-session -s $1 \; send-keys "vim "$2 Enter \; split-window -h \; send-keys "ls -lrt" Enter \; split-window -v \; send-keys "ipython" Enter
}

tmxa() {
    tmux attach-session -t $1
}

