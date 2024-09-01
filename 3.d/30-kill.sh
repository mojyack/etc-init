echo "Sending TERM signal to processes..."
kill -TERM -1
sleep 1

echo "Sending KILL signal to processes..."
kill -KILL -1
