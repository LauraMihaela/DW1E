//01.10.2019
//programador: laura




SubProceso longitudCircum <-circumferencia(radio por Por Referencia)
	definir longitudCircum Como Real;
	Escribir "Introduzca el radio de la circumferencia:" Sin Saltar;
	leer radio;
	longitudCircum<-2* PI * radio;
FinSubProceso
SubProceso areaCuadrado <- Nombre ( Argumentos )
	
FinSubProceso
SubProceso areaTrapezio <- Nombre ( Argumentos )
	
FinSubProceso


	
Proceso CalculoLongitidYAreas
	Definir opcion Como Entero;
	Definir radio,lado,baseMayor,baseMenor,altura,resultado
	
	

	
	
	
	
	Escribir "";
	Escribir "1. Longitud de una circumferencia";
	Escribir "2.-Area de un Circulo";
	Escribir "3.- Area de un cuadrado";
	Escribir "4.- área de un trapecio";
	Escribir " ";
	Escribir "9.- SALIR del programa";
	Escribir "";
	Escribir "Teclee una opcion del menu" Sin Saltar;
	Leer opcion;
	
	
	
	Si opcion != 9 Entonces
		Si opcinon <1 o opcion >4 entonces
			Escribir "La opcion no es corecta";
		SiNo
			Segun opcion Hacer
		FinSi
FinProceso
