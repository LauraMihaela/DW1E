//24.09.2019
//laura
//
Proceso TablaDeOperaciones
	Definir opcion,num1,num2,decision como Entero;
	definir operacion como Cadena;
	Definir resultado como Real;
	decision <-0;
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
			resultado<-num1 / num2;
			operacion<-"division";
		De Otro Modo:
			Escribir "Opción no valida";
			decision<-1;
			
	FinSegun
	Si decision=0 Entonces
		Escribir "el resultado de la operacion ",operacion, "es igual a: ", resultado;
		
		
	FinSi
FinProceso
