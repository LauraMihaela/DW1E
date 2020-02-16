SubProceso resultado <- factorial ( numero_factorial )
	Definir resultado,i como Entero;
	resultado<-1;
	
	Para i<-numero_factorial Hasta 2 Con Paso -1 Hacer
		resultado<-resultado*i;
	FinPara
	
FinSubProceso

Proceso Principal
	definir numero_factorial Como Entero;
	Escribir factorial(5);
FinProceso
