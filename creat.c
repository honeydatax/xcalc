#include <stdio.h>
#include <stdlib.h>

int main(){
	FILE *f1;
	f1=fopen("stock.dat","w+");
	fprintf(f1,"CREATE TABLE MOVS (\n");
	fprintf(f1,"ID INT NOT NULL ,\n");
	fprintf(f1,"DOC INT NOT NULL ,\n");
	fprintf(f1,"DATES CHAR(10) NOT NULL  ,\n");
	fprintf(f1,"PRODUCT INT NOT NULL ,\n");
	fprintf(f1,"REFS VARCHAR(25) NOT NULL, \n");
	fprintf(f1,"VALUE INT NOT NULL, \n");
	fprintf(f1,"PRIMARY KEY (ID)\n");
	fprintf(f1,");\n");
	fprintf(f1,".tables\n");
	fprintf(f1,".schema MOVS\n");
	fprintf(f1,".quit\n");
	fclose(f1);
	printf("creating tables....\n");
	system("sqlite stock.db < stock.dat");
	return 0;
}



















