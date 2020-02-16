SubProceso suma <- sumaNumeros ( numero1,numero2 )
	definir suma como entero;
	suma<-numero1+numero2;
	
FinSubProceso

Proceso Principal
	definir num1,num2,sumaSubproceso como Entera;
	num1<-5;
	num2<-2;
		
	sumaSubproceso<-sumaNumeros(num1,num2);
	Escribir sumaSubproceso; 
	
FinProceso
