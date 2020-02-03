# /usr/bin/sh
echo "press control-break to exit."
for b in {0..50}
do
printf "%s" "select * from MOVS where PRODUCT = " > ./data/products.sql
echo 'enter product number yours refs  ,'
read a
echo $a >> ./data/products.sql
echo ';' >> ./data/products.sql
echo '.quit' >> ./data/products.sql
sqlite ./data/stocks.dbf < ./data/products.sql
echo ------------------------------------------
done