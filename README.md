# Backup Mysql Discrod

Edit file `backup-mysql-discord.sh`. Set:

```sh
# database user
DB_USER=

# database password
DB_PASSWORD=

# database name
DB_NAME=

# discord webhook url
DISCORD_WEBHOOK_URL=

# backup dir
BACKUP_DIR=backups
```

Run

```bash
chmod +x backup-mysql-discord.sh

./backup-mysql-discord
```
