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
