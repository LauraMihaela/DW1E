//fecha:20.09.2019
//programador: laura
//Pedir al usuario que introdusca tratamiento: Sr. Sra.
//Pedir al usuario que introduzca un nombre
//Pedir al usuario que introduzca una edad en a�os
//Devolver: Si es Sr.> El se�or + tretamiento + nombre + edad +
//Si tiene 18 o m�s a�os decir que es mayor de edad. Si no menor de edad
//Ejemplos
//Sra.* Amalia * 23 =>
//La se�ora Sra. Amalia con edad de 23 a�os es mayor de edad
//Sr. * Joaquin * 12 =>
//El se�or Sr. Joaqu�n con edad de 12 a�os es menor de edad


Proceso tratamientoEdad
	Definir tratamiento,nombre,salidaT,salidaMayorMenor Como Cadena;
	Definir edad Como Entero;
	Escribir "inroduzca el tratamiento ( sr./sra.): " Sin Saltar;
	Leer tratamiento;
	
	Escribir "introduzca el nombre: " Sin Saltar;
	Leer nombre;
	escribir "introdusca la edad " sin saltar;
	leer edad;
	Si tratamiento = "sr. " Entonces
	salidaT<-"El se�or sr. ";
    SiNo
	
	Si tratamiento="Sra." Entonces
	
		salidaT<-"La se�ora Sra.";
	    SiNo
		     salidaT<-"<Tratamiento erroneo>";
		FinSi
	
	FinSi
	
	Si edad>=18 Entonces
		salidaMayorMenor<-"es mayor de edad";
	SiNo
		salidaMayorMenor<-"es menor de edad";
	FinSi
	Escribir salidaT, " ",nombre," con edad de ",edad," a�os ",salidaMayorMenor;
FinProceso
