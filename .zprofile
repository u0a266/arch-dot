export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin:$HOME/bin:$HOME/.local/bin"
export EDITOR="nvim"
export BAT_THEME=Nord

if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> ~/.ssh/ssh-agent
   fi
   eval `cat ~/.ssh/ssh-agent`
fi

for id in $(ls ~/.ssh/id*|grep -v pub); do
	ssh-add $id >& /dev/null
done
