//06.10.2019
//programador:Laura
//Escribir el numero de asteriscos que indica el cliente


Proceso numeroDeAsteriscos
	Definir opcion,i como Entero;
	Definir seguir Como Caracter;
	Definir asterisco como Caracter;
	
	asterisco<-"*";
	Repetir
		
	
		// Menú
		Escribir "Menú";
		Escribir "Introduzca numero del 1 al 10 para asteriscos";
		Escribir "Introduzca 0 para finalizar y salir";
		Escribir "";
		Leer opcion ;
		Si opcion<>0 Entonces
			Si opcion >10 O opcion <1 Entonces
				Escribir "Opción no valida";
				
			SiNo
				Para i<-1 Hasta opcion con paso 1 hacer
					Escribir asterisco sin saltar;
					
				FinPara
			
			FinSi
		SiNo
			Escribir "Programa finalizado";
		FinSi
		escribir"";
		Escribir "Pulsa Enter para continuar";
		Esperar tecla;
		Limpiar Pantalla;
	Hasta Que opcion=0
FinProceso 
