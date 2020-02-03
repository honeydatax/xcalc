# /usr/bin/sh
echo "press control-break to exit."
for b in {0..50}
do
printf "%s" "select * from MOVS where DOC = " > ./data/find.sql
echo 'enter document number yours refs  ,'
read a
echo $a >> ./data/find.sql
echo ';' >> ./data/find.sql
echo '.quit' >> ./data/find.sql
sqlite ./data/stocks.dbf < ./data/find.sql
echo ------------------------------------------
done