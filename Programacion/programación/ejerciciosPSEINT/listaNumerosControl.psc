//Fecha 19/09/2019
//Programador: Alonso
//Lista de número entre el 1 el 12 controlando los números
Proceso listaDeNumeros
	Definir num1,num2,salto,contador como Entera;
	
	Escribir "Primer número: " Sin Saltar;
	leer num1;
	
	Escribir "Segundo número: " Sin Saltar;
	leer num2;
	
	Escribir "Salto: " Sin Saltar;
	leer salto;
	
	Si num1>num2 Y salto<0 Entonces
		Escribir "Lista Descendente";
		Para contador<-num1 Hasta num2 Con Paso salto Hacer
			Escribir contador;
		FinPara
	SiNo
		Si num1<num2 Y salto>0 Entonces
			Escribir "Lista Ascendente";
			Para contador<-num1 Hasta num2 Con Paso salto Hacer
				Escribir contador;
			FinPara
		SiNo
			Escribir "Datos incoherentes";
		FinSi
	FinSi
	
FinProceso
