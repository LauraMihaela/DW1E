Proceso Asteriscos
	definir num,i Como Entero;
	definir signo como Cadena;
	signo<-"*";
	Escribir "ingrese la cantidad";
	leer num;
	Para i<-1 hasta num Con Paso 1 Hacer
		Escribir signo;
		signo<-Concatenar(signo,"*");
	FinPara
	
FinProceso
