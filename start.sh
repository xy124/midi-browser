#!/bin/bash
echo WARNING: this is for development purpose only:

python3 -m http.server &

cd ./python-midi-websocket-server

if [[ "$1" == "nodemon" ]];
then
    nodemon server.py &
else
    python3 server.py &
fi

wait
