//19/19/2019
//programador: laura
//lista de numero entre 1 el 12 controlando los numeros



	Proceso listaDeNumeros
		Definir num1,num2,salto,contador como Entera;
		Escribir"Primer numero: " Sin Saltar;
		leer num1;
		
		Escribir"Secundo numero: " Sin Saltar;
		leer num2;
		
		Escribir "Salto: " Sin Saltar;
		leer Salto;
		
		
		Si num1>num2 y salto<0 Entonces
			Escribir "Lista Descendente";
			Para contador<-num1 Hasta num2 Con Paso salto Hacer
				Escribir contador;
			FinPara
		SiNo
			si num1<num2 y salto>0 Entonces
				Escribir "Lista Ascendente";
				Para contador<-num1 Hasta num2 Con Paso salto Hacer
					Escribir contador;
				FinPara
			SiNo
				Escribir "Datos incoherentes";
				
			FinSi
			
		FinSi
FinProceso
	
