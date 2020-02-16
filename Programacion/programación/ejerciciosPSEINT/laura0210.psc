//02.10.2019
//programador:Laura
//Escribir el numero de asteriscos que indica el cliente


Proceso numeroDeAsteriscos
	Definir opcion,decision Como Entero; 
	Definir seguir Como Caracter;
	decision<-0;
	Repetir
	// Menú
	Escribir "Menú";
	Escribir "Introduzca numero del 1 al 10 para asteriscos";
	Escribir "Introduzca 0 para finalizar y salir";
	Escribir "";
	Leer opcion;
	Si opcion<>0 Entonces
		Si opcion >10 O opcion <1 Entonces
			Escribir "Opción no valida";
			decision<-1;
		SiNo
			Segun opcion Hacer
				1:  Escribir "*";
				2:  Escribir "**";
				3:  Escribir "***";
				4:  Escribir "****";
				5:  Escribir "*****"; 
				6:  Escribir "******";
				7:  Escribir "*******";
				8:  Escribir "********";
				9:  Escribir "*********";
				10: Escribir "**********";
			FinSegun
			Si decision=0 Entonces
				Escribir "Los numeros de asteriscos son conforme con tu opción: ",opcion;
			FinSi
		decision<-0;
		FinSi
	SiNo
		Escribir "Programa finalizado";
	FinSi
	Escribir "Pulsa Enter para continuar";
	Leer seguir;
	Limpiar Pantalla;
Hasta Que opcion=0
FinProceso
