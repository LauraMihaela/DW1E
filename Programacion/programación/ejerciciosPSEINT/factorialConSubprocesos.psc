SubProceso ingresar(n Por Referencia)
	Escribir "ingresar numero";
	leer n;
	
FinSubProceso

SubProceso factorial(i,n,fact Por Referencia)
	fact<-1;

	Para i<-1 Hasta n Con Paso 1 Hacer
		fact<-fact*i;
	FinPara
	Escribir "El factorial es: ",fact;
FinSubProceso

Proceso principal
	Definir i,n,fact Como Entero;
	i<-1;
	ingresar(n);
	factorial(i,n,fact);
	
FinProceso
