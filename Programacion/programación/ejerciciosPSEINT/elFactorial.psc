Proceso elFactorial
	Definir a,b,c Como Entero;
	c<-1;
	Escribir "Ingrese un numero para el factorial";
	Leer a;
	Para b<-1 Hasta a Con Paso 1 Hacer
		c<-c*b;
	FinPara
	Escribir "El factorial de numero ",a, " es:",c;
FinProceso
