//Fecha 19/09/2019
//Programador: Alonso
//Lista de n�mero entre el 1 el 12 controlando los n�meros
Proceso numParImpar
	Definir num como Entera;
	
	Escribir "Dame el n�mero: " sin saltar;
	Leer num;
	
	Si (num mod 2 = 0) Entonces
		Escribir "N�mero ",num," es PAR";
	SiNo
		Escribir "N�mero ",num," es IMPAR";
	FinSi
	
FinProceso
