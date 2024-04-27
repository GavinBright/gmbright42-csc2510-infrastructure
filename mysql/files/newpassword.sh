#!/bin/bash

if [ "$#" -ne 1 ]; then
   echo "Usage: $0 <NEW_PASSWORD>"
   exit 1
fi

NEW_PASSWORD="$1"

mysql -u root <<EOF
ALTER USER 'root'@'localhost' INDENTIFIED WITH mysql_native_password BY '$NEW_PASSWORD';
FLUSH PRIVILEGES;
EOF

echo "Succesful changed root user password."
