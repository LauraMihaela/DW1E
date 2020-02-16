//fecha:20.09.2019
//programador: laura
//Pedir al usuario que introdusca tratamiento: Sr. Sra.
//Pedir al usuario que introduzca un nombre
//Pedir al usuario que introduzca una edad en años
//Devolver: Si es Sr.> El señor + tretamiento + nombre + edad +
//Si tiene 18 o más años decir que es mayor de edad. Si no menor de edad
//Ejemplos
//Sra.* Amalia * 23 =>
//La señora Sra. Amalia con edad de 23 años es mayor de edad
//Sr. * Joaquin * 12 =>
//El señor Sr. Joaquín con edad de 12 años es menor de edad


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
	salidaT<-"El señor sr. ";
    SiNo
	
	Si tratamiento="Sra." Entonces
	
		salidaT<-"La señora Sra.";
	    SiNo
		     salidaT<-"<Tratamiento erroneo>";
		FinSi
	
	FinSi
	
	Si edad>=18 Entonces
		salidaMayorMenor<-"es mayor de edad";
	SiNo
		salidaMayorMenor<-"es menor de edad";
	FinSi
	Escribir salidaT, " ",nombre," con edad de ",edad," años ",salidaMayorMenor;
FinProceso
