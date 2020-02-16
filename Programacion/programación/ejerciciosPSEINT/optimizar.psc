//24.09.2019
//laura
//hacer un menú de operaciones
//optimizar 
Proceso TablaDeOperaciones
	Definir opcion,num1,num2,resultado como Entero;
	definir operacion como Cadena;
	
	//Menú
	Escribir "Menú de Operaciones Aritmeticas";
	Escribir  "1.- Sumar";
	Escribir "2.-Restar";
	Escribir "3.-Multiplicar";
	Escribir "4.-Dividir";
	// Escribir"9.-Finalizar;
	Escribir "";
	Escribir "Introduce una operación" sin saltar;
	Leer opcion;
	si opcion>=1 Y opcion<=4 Entonces;
	Escribir "introdusca dos numeros enteros:" sin saltar;
	leer num1,num2;
	
	Segun opcion Hacer
		1:
			resultado<-num1 + num2;
			operacion<-"suma";
		2:
			resultado<-num1 - num2;
			operacion<-"restar";
		3:
			resultado<-num1 * num2;
			operacion<-"multiplicar";
		4:
			resultado<-trunc(num1 / num2);
			operacion<-"division";
		
			
	FinSegun
	
		Escribir "el resultado de la operacion ",operacion, "es igual a: ", resultado;
	SiNo
		Escribir "operacion erronea";
		
	FinSi
FinProceso
