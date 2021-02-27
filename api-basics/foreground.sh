echo "This can take up to 40 seconds..."
while [ ! -f /usr/local/bin/wait.sh ]; do sleep 1; done; /usr/local/bin/wait.sh