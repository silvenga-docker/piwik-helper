#!/bin/bash

if [ -f /script.sh ] ; then
    echo "/script.sh must exist. Will exit now."
    exit 1
fi

echo "Waiting ${INIT_SECONDS} seconds to begin loop."
sleep ${INIT_SECONDS}

echo "Loop will sleep for ${SLEEP_SECONDS} seconds."
echo "Loop will now begin."

trap "break;exit" SIGHUP SIGINT SIGTERM
while /bin/true; do
    /bin/bash /script.sh
    sleep ${SLEEP_SECONDS}
done