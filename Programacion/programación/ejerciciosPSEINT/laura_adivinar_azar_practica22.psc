Proceso adivina
	Definir numeroCorrecto, numeroUsuario, turnos Como Entero;
	numeroCorrecto<-50+azar(150)+1;
	
	turnos<-10;
	escribir "inserte el numero del 50 a 150";
	leer numeroUsuario;
	mientras numeroUsuario <> numeroCorrecto y turnos>0 hacer
		si numeroUsuario>numeroCorrecto Entonces
			Escribir "muy alto";
		sino
			escribir "muy bajo";
		FinSi
		escribir "le quedan",turnos,"turnos";
		turnos<-turnos-1;
		
	FinMientras
	Mientras turnos=1 o turnos=2 o turnos=3 hacer
		Si numeroUsuario=numeroCorrecto  Entonces
			
			Escribir "ganar";
		
		FinSi
	FinMientras
	Mientras turnos=4 o turnos=5 o turnos=6 hacer
		Si numeroUsuario=numeroCorrecto  Entonces
			
			Escribir "secundo";
		
		FinSi
	FinMientras
	
	Mientras turnos=7 o turnos=8 o turnos=9 hacer
		Si numeroUsuario=numeroCorrecto  Entonces
			Escribir "tercero";
		FinSi	
	FinMientras
	Mientras turnos=10 hacer
		Si numeroUsuario=numeroCorrecto  Entonces
			
			Escribir "consolación";
		FinSi
	FinMientras
	
	si turnos=0 Entonces
		Escribir "perdistes el numero era: ",numeroCorrecto;
	finSi
	
	
	
	
	
	
	
	
	
	
FinProceso
