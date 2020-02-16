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


Proceso menorMayorDeEdad
	Definir tratamiento, nombre Como Caracter;
	Definir edad Como Entero;
	Escribir "tratamiento";
	Leer tratamiento;
	
	Escribir "nombre" Sin Saltar;
	Leer nombre;
	
	Escribir "edad" Sin Saltar;
	Leer edad;
	Si edad>=18 Entonces
		Escribir "es mayor de edad";
	SiNo
		Escribir "es menor de edad";
	FinSi
	
FinProceso
