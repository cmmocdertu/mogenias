#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9f7bb80c-11da-46c7-9374-e98b8314252d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

