//24.09.2019
//laura
//
Proceso OpcionesConLetra
	Definir opcion,num1,num2,resultado,decision como Entero;
	definir operacion como Cadena;
	definir opcion como Caracter;
	decision <-0;
	//Men�
	Escribir "Men� de Operaciones Aritmeticas";
	Escribir  "a.- Sumar";
	Escribir "b..-Restar";
	Escribir "c.-Multiplicar";
	Escribir "d.-Dividir";
	// Escribir"9.-Finalizar;
	Escribir "";
	Escribir "Introduce una operaci�n" sin saltar;
	Leer opcion;
	Escribir "introdusca dos numeros enteros:" sin saltar;
	leer num1,num2;
	
	//se puede depiendiendo del perfil hacer no estricto
	Segun opcion Hacer
	��:
			resultado<-num1 + num2;
			operacion<-"suma";
		`b�:
			resultado<-num1 - num2;
			operacion<-"restar";
		3:
			resultado<-num1 * num2;
			operacion<-"multiplicar";
		4:
			resultado<-trunc(num1 / num2);
			operacion<-"division";
		De Otro Modo:
			Escribir "Opci�n no valida";
			decision<-1;
			
	FinSegun
	Si decision=0 Entonces
		Escribir "el resultado de la operacion ",operacion, "es igual a: ", resultado;
		
		
	FinSi
FinProceso
