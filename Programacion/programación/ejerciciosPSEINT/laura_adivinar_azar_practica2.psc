// fecha 18.10.2019
// programador: Laura
// Este juego consiste en adivinar un número entero entre el 50 y el 150 (ambos incluidos)
// Dispone de 10 intentos de adivinar el número
// Si lo consigue en los 3 primeros intentos GANA LA PARTIDA
// Si lo consigue entre el 4º y 6º intento quedará:SEGUNDO
// Si lo consigue entre el 7º y el 9º intento quedará: TERCERO
// Si lo consigue en el 10º intento ganará el premio de CONSOLACIÓN
// Si no lo consigues en el 10º intento PIERDE LA PARTIDA
// Una vez que acierta el número saldrá: el resultado y el turno en el que acertó el número. En ese momento se acabará la partida
// Podrá abandonar el juego pulsandó el número 0. En este caso se le indicará al usuario que ha abandonado el juego.
// Cuando el usuario introduzca un número, habrá que ir guiándole diciendo si el número introducido  por el teclado
// es mayor o menor que el número buscado.
// Se dejará que el usuario lea los mensajes el tiempo que desee hasta que pulse la tecla ENTER.

SubProceso numeroUsuario <- leerNumero ( )
	Definir numeroUsuario como Entero;
	numeroUsuario<-0;
	Repetir
		Escribir "Dame un numero entre 50 y 150 ";
		Leer numeroUsuario;
	Hasta Que numeroUsuario>=50 y numeroUsuario<=150;
	
FinSubProceso

SubProceso codigo <- ComprobarNumero ( numeroCorrecto,numeroUsuario )
	Definir codigo,turnos como Entero;
	turnos<-11;
	codigo<-1;
	mientras numeroUsuario=numeroCorrecto hacer
		Si turnos>=1 y turnos<=3 Entonces
			codigo<-1;
		SiNo
			Si turnos>=4 y turnos<=6 Entonces
				codigo<-2;
			SiNo
				Si turnos>=7 y turnos<=9 Entonces
					codigo<-3;
				SiNo
					Si turnos=10 Entonces
						codigo<-4;
					SiNo
						Si turnos>10 Entonces
							codigo<-5;
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	 FinMientras
		Si numeroUsuario > numeroCorrecto Entonces
			codigo<-6;
		SiNo
			codigo<-7;
		FinSi
	
FinSubProceso


Proceso Adivinar
	Definir numeroCorrecto,numeroUsuario,turnos,codigo como Entero;
	Definir salir como Logico;
	//numeroCorrecto<-50+azar(150)+1;
	numeroCorrecto<-aleatorio(50,150);
	salir<-falso;
	turnos<-10;
	codigo<-1;
	Mientras no salir Hacer
		// leer el número del usuario
		numeroUsuario<-leerNumero();
		
		//comprobar el número del usuario
		
		
		Segun ComprobarNumero(numeroCorrecto,numeroUsuario) Hacer
			1:
				Escribir "ganaste";
				salir<-Verdadero;
			2:
				Escribir "secundo";
				salir<-Verdadero;
			3:
				Escribir "tercero";
				salir<-Verdadero;
			4:
				Escribir "consolación";
				salir<-Verdadero;
			5:
				Escribir "Perdiste";
				salir<-Verdadero;
			6:
				Escribir "muy alto";
			7: 
				Escribir "muy bajo";
		FinSegun
		
		
	FinMientras
    
		
	
FinProceso


