#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void add(FILE *f1,char *c,int i,int ii);


int main(){
	FILE *f1;
	int i=0;
	printf("Press control-c to exit\n");
	do{
		f1=fopen("stock.dat","w+");
		fprintf(f1,"Insert into MOVS ( ID,DOC,DATES,PRODUCT,REFS,VALUE)\nvalues (\n");
		add(f1,"ID",0,0);
		add(f1,"DOC",0,0);
		add(f1,"DATES",1,0);
		add(f1,"PRODUCT",0,0);
		add(f1,"REFS",1,0);
		add(f1,"VALUE",1,1);
		fprintf(f1,");\n");
		fprintf(f1,".quit\n");
		fclose(f1);
		printf("................................\n");
		system("sqlite stock.db < stock.dat");
	}while(i==0);
	return 0;
}


void add(FILE *f1,char *c,int i,int ii){
	char cc[190];
	char *ccc;
	ccc=cc;
	printf("%s :? ",c);
	ccc=fgets(ccc,181,stdin);
	ccc=strstr(ccc,"\n");
	if(ccc!=NULL) ccc[0]=0;
	ccc=cc;
	printf("\n");
	if (i==0) fprintf(f1," %s \n",ccc);
	if (i!=0) fprintf(f1," \"%s\" \n",ccc);
	if (ii==0) fprintf(f1,", \n");
}

















