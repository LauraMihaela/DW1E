SubProceso resultado <- factorial ( numero_factorial )
	Definir resultado,i Como Entero;
	resultado<-numero_factorial;
	Para i<-numero_factorial-1 Hasta 2 Con Paso -1 Hacer
		resultado<-resultado*i;
	FinPara
	
FinSubProceso

Proceso Principal
	Definir numero_factorial Como Entero;
	Escribir factorial(5);
	
FinProceso
