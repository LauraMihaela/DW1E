// fecha 18.10.2019
// programador: Laura
// Este juego consiste en adivinar un n�mero entero entre el 50 y el 150 (ambos incluidos)
// Dispone de 10 intentos de adivinar el n�mero
// Si lo consigue en los 3 primeros intentos GANA LA PARTIDA
// Si lo consigue entre el 4� y 6� intento quedar�:SEGUNDO
// Si lo consigue entre el 7� y el 9� intento quedar�: TERCERO
// Si lo consigue en el 10� intento ganar� el premio de CONSOLACI�N
// Si no lo consigues en el 10� intento PIERDE LA PARTIDA
// Una vez que acierta el n�mero saldr�: el resultado y el turno en el que acert� el n�mero. En ese momento se acabar� la partida
// Podr� abandonar el juego pulsand� el n�mero 0. En este caso se le indicar� al usuario que ha abandonado el juego.
// Cuando el usuario introduzca un n�mero, habr� que ir gui�ndole diciendo si el n�mero introducido  por el teclado
// es mayor o menor que el n�mero buscado.
// Se dejar� que el usuario lea los mensajes el tiempo que desee hasta que pulse la tecla ENTER.

SubProceso numeroUsuario <- leerNumero ( )
	Definir numeroUsuario como Entero;
	numeroUsuario<-0;
	Repetir
		Escribir "Dame un numero entre 50 y 150 ";
		Leer numeroUsuario;
	Hasta Que numeroUsuario>=50 y numeroUsuario<=150;
	
FinSubProceso

SubProceso codigo <- ComprobarNumero ( numeroCorrecto,numeroUsuario )
	Definir codigo, turnos como Entero;
	codigo<-1;
	turnos<-10;
	Si numeroUsuario=numeroCorrecto Entonces
		
		codigo<-1;
		
		
	SiNo
		Si numeroUsuario>numeroCorrecto Entonces
			codigo<- 2;
		SiNo
			codigo<- 3;
		FinSi
	FinSi
	
FinSubProceso
//SubProceso premio <- acordarPremio ( turnos )
	//Definir premio como Entero;
	
	
//FinSubProceso

Proceso Adivinar
	Definir numeroCorrecto,numeroUsuario,turnos,codigo como Entero;
	Definir salir como Logico;
	//numeroCorrecto<-50+azar(150)+1;
	numeroCorrecto<-aleatorio(50,150);
	salir<-falso;
	turnos<-11;
	codigo<-1;
	Mientras no salir Hacer
		// leer el n�mero del usuario
		numeroUsuario<-leerNumero();
		
		//comprobar el n�mero del usuario
		
		
		Segun ComprobarNumero(numeroCorrecto,numeroUsuario) Hacer
			1:
				
				Si turnos=1 o turnos=2 o turnos=3 Entonces
					Escribir "Ganast� la partida";
				SiNo
					Si turnos=4 o turnos=5 o turnos=6 Entonces
						Escribir "Secundo";
					SiNo
						Si turnos=7 o turnos=8 o turnos=9 Entonces
							Escribir "Tercero";
						SiNo
							Si turnos=10 Entonces
								Escribir "Consolaci�n";
							SiNo
								Si turnos>10 Entonces
									Escribir "Perdistes";
								FinSi
								
							FinSi
						FinSi
					FinSi
				FinSi
				Escribir "ganast�";
				salir<-Verdadero;
			2:
				Escribir "Muy alto";
			3:
				Escribir "muy bajo";
		FinSegun
		
		//Para turnos<-1 Hasta 11 Con Paso 1 Hacer
			
			
		//FinPara
	FinMientras
    
		
	
FinProceso


