# /bin/usr/sh
echo list all tables:
sqlite stocks.dbf < tables.sql
echo list schema movs:
sqlite stocks.dbf < schema.sql

