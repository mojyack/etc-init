echo "Stopping daemons..."

source ./vars
source "$basedir/vars"
if mountpoint -q "$daemonsdir"; then
    for d in $daemonsdir/*; do
        state=$(<$d/state)
        if [[ $state == "up" ]]; then
            echo "down" > $d/state
        fi
    done
    fusermount3 -u "$daemonsdir"
fi
