#!/bin/bash

PORT=5432

PID=$(lsof -t -i:$PORT)

if [ -z "$PID" ]; then
  echo "No process is using port $PORT."
else
  kill -9 $PID
  echo "Process $PID using port $PORT has been killed."
fi
