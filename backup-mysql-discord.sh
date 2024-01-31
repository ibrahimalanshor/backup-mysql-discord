#!/bin/sh

# database user
DB_USER=

# database password
DB_PASSWORD=

# database name
DB_NAME=

# discord webhook url
DISCORD_WEBHOOK_URL=

# backup dir
BACKUP_DIR=

NOW=$(date +'%Y-%m-%d_%H-%M')
FILENAME="$BACKUP_DIR/${DB_NAME}_${NOW}"

mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $FILENAME.sql
curl -sF "file1=@$FILENAME.sql" $DISCORD_WEBHOOK_URL > /dev/null 2>&1