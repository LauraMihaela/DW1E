//Fecha: 20/09/2019
//Programador: Alonso
//Input País (España, Rumanía, Siria, Bolivía, Brasil)
//Input Categoría (Jefe, Administrativo, Peón)
//Input Sueldo = x
//Si país España o Siria y categoría Jefe o administrativo sueldo nuevo x+5%. Si la categoría es Peón x+15%
//Si país Bolivia y categoría Jefe o administrativo sueldo nuevo x+7%. Si la categoría es Peón x+17%
//Si país es otro y categoría Jefe o administrativo sueldo nuevo x -no hay cambio-. Si la categoría es Peón x+20%
//Resultado: El <categoría> del país <pais> tenía un sueldo de <x> moneda nacional y ahora tiene un sueldo de <x+%> moneda nacional.


Proceso subidaSueldosPaisCategoria
	Definir pais,categoria como Cadena;
	Definir sueldo,nuevoSueldo,sw como Entero;
	
	sw<-0;
	
	Escribir "Introduzca un país entre los siguientes: (España, Rumanía, Siria, Bolivía, Brasil)" Sin Saltar;
	Leer pais;
	
	Si pais<>"España" Y pais<>"Rumania" Y pais<>"Siria" Y pais<>"Bolivia" Y pais<>"Brasil" Entonces
		Escribir "País erróneo.";
		sw<-1;
	SiNo
		Escribir "Introduzca una categoría entre las siguientes: (Jefe, Administrativo, Peón)" Sin Saltar;
		Leer categoria;
		Si categoria<>"Jefe" Y categoria<>"Administrativo" Y categoria<>"Peón" Entonces
			Escribir "Categoría errónea.";
			sw<-1;
		SiNo
			Escribir "Introduzca un sueldo" Sin Saltar;
			Leer sueldo;
			
			Si pais="España" O pais="Siria" Entonces
				Si categoria="Jefe" O categoria="Administrativo" Entonces
					nuevoSueldo<-sueldo*1.05;
				SiNo
					nuevoSueldo<-sueldo*1.15;
				FinSi
			SiNo
				Si pais="Bolivia" Entonces
					Si categoria="Jefe" O categoria="Administrativo" Entonces
						nuevoSueldo<-sueldo*1.07;
					SiNo
						nuevoSueldo<-sueldo*1.17;
					FinSi
				SiNo
					Si categoria="Jefe" O categoria="Administrativo" Entonces
						nuevoSueldo<-sueldo;
					SiNo
						nuevoSueldo<-sueldo*1.20;
					FinSi
				FinSi
			FinSi
			
		FinSi
		
	FinSi
	
	Si sw=1 Entonces
		Escribir " Vuelva a ejecutar el programa";
	SiNo
		Escribir "El ",categoria," del pais ",pais," tenía un sueldo de ",sueldo," y ahora tiene un sueldo de ",nuevoSueldo," en moneda nacional";
	FinSi
	
FinProceso
