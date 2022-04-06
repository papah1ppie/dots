#!/bin/bash

# wttr.in autodectect ssh

CLIENT_LOCATION=$(echo $SSH_CLIENT | awk '{print $1}')
ARGS='0n'

curl "wttr.in/@$CLIENT_LOCATION?$ARGS"
