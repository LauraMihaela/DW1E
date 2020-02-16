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

Proceso adivina
	definir numeroUsuario,numeroSecreto,intentos,segur Como Entero;
	definir conseguido Como Logico;
	
	//numeroSecreto<-50+azar(150)+1;
	numeroSecreto<-aleatorio(50,150);
	Escribir "Pulsa 1 para limpiar pantalla";
	Escribir "Pulsa 0 para finalizar el programa";
	Repetir
		Escribir "Escribe un numero entre 50 y 150";
		Leer numeroUsuario;
		Si numeroUsuario < 50 o numeroUsuario > 150 Entonces
			Escribir "El numero introducido no esta entre 50 y 150";
		FinSi
	Hasta Que (numeroUsuario>=50 y numeroUsuario<=150) o numeroUsuario = 0;
	intentos<-1;
	conseguido<-Falso;
	Mientras numeroUsuario!=0 Hacer
		
		Mientras intentos < 10 y conseguido = Falso Hacer
			Si numeroUsuario=numeroSecreto Entonces
				Si intentos>=1 y intentos<=3 Entonces
					Escribir "ganaste";
					conseguido <-Verdadero;
					intentos<-intentos+1;
				SiNo
					Si intentos>=4 y intentos<=6 Entonces
						Escribir "segundo";
						conseguido <-Verdadero;
						intentos<-intentos+1;
					SiNo
						Si intentos>=7 y intentos<=9 Entonces
							Escribir "tercero";
							conseguido <-Verdadero;
							intentos<-intentos+1;
						SiNo
							Si intentos=10 Entonces
								Escribir "consolación";
								conseguido <-Verdadero;
								intentos<-intentos+1;
							FinSi
						FinSi
					FinSi
				FinSi
			SiNo
				Si numeroUsuario>numeroSecreto  Entonces
					Escribir "muy alto";
					intentos<-intentos+1;
				SiNo
					Escribir "muy bajo";
					intentos<-intentos+1;
				FinSi
			FinSi
			Si intentos = 10 Entonces
				Escribir "El juego ha terminado, si deseas volver a intentarlo presiona 3";
				Leer numeroUsuario;
				
			FinSi
				
			Si conseguido = Falso Entonces
				Leer numeroUsuario; 
			FinSi
			
			Si numeroUsuario = 1 y intentos <> 10 y conseguido = Falso Entonces
				Limpiar Pantalla;
				Leer numeroUsuario; 
				Mientras numeroUsuario = 1 Hacer
					Leer numeroUsuario; 
				FinMientras
			FinSi
			
			Si numeroUsuario < 50 o numeroUsuario > 150 Entonces
				Escribir "El numero introducido no esta entre 50 y 150";
				Leer numeroUsuario; 
			FinSi
			
		FinMientras
		
		
		
		
	FinMientras ;
	Escribir "El juego ha finalizado";
FinProceso
