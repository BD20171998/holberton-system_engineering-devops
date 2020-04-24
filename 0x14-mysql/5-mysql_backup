#!/usr/bin/env bash
# Bash script that generates a MySQL dump & creates a compressed archive from it
mysqldump -uroot -p"$1" --all-databases > backup.sql
tar -czvf "$(date +%d-%m-%Y)".tar.gz backup.sql
