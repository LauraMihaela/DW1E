//Fecha 19/09/2019
//Programador: Alonso
//Lista de número entre el 1 el 12 controlando los números
Proceso numParImpar
	Definir num como Entera;
	
	Escribir "Dame el número: " sin saltar;
	Leer num;
	
	Si (num mod 2 = 0) Entonces
		Escribir "Número ",num," es PAR";
	SiNo
		Escribir "Número ",num," es IMPAR";
	FinSi
	
FinProceso
