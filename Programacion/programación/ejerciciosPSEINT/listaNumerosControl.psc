//Fecha 19/09/2019
//Programador: Alonso
//Lista de n�mero entre el 1 el 12 controlando los n�meros
Proceso listaDeNumeros
	Definir num1,num2,salto,contador como Entera;
	
	Escribir "Primer n�mero: " Sin Saltar;
	leer num1;
	
	Escribir "Segundo n�mero: " Sin Saltar;
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
