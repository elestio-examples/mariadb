#set env vars
set -o allexport; source .env; set +o allexport;

#write cli helper
echo "docker exec -it mariadb mysql --host=172.17.0.1 --port=24306 --user=root --password=${SOFTWARE_PASSWORD}" > mysql-docker-cli.sh;
chmod +x mysql-docker-cli.sh;

#create backup folder
mkdir -p /opt/app-backups

#write backup helper
echo "docker exec mariadb /usr/bin/mysqldump --no-tablespaces --user=root --password=${SOFTWARE_PASSWORD} --all-databases | gzip > /opt/app-backups/DB_\$(date +%Y-%m-%d-%H.%M.%S).sql.gz" > backupDB.sh;
chmod +x backupDB.sh;

#write restore from dump helper
cat > restoreDB-Dump.sh << 'EOF'
if [ -z "$1" ]
 then
echo "You must pass 1 parameter: full path to your SQL backup to restore"
 else
gunzip < $1 | docker exec -i mariadb /usr/bin/mysql --binary-mode --user=root --password=${SOFTWARE_PASSWORD}
fi
EOF
chmod +x restoreDB-Dump.sh;
