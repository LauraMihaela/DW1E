SubProceso long <- longitudCadena ( frase )
	definir long como Entero;
	long<-Longitud(frase);
	
FinSubProceso


Proceso Principal
	Escribir "la cadena tiene ",longitudCadena("Hola mundo"), " caracteres";
FinProceso
