// fecha 18.10.2019
// programador: Laura
// Este juego consiste en adivinar un n?mero entero entre el 50 y el 150 (ambos incluidos)
// Dispone de 10 intentos de adivinar el n?mero
// Si lo consigue en los 3 primeros intentos GANA LA PARTIDA
// Si lo consigue entre el 4? y 6? intento quedar?:SEGUNDO
// Si lo consigue entre el 7? y el 9? intento quedar?: TERCERO
// Si lo consigue en el 10? intento ganar? el premio de CONSOLACI?N
// Si no lo consigues en el 10? intento PIERDE LA PARTIDA
// Una vez que acierta el n?mero saldr?: el resultado y el turno en el que acert? el n?mero. En ese momento se acabar? la partida
// Podr? abandonar el juego pulsand? el n?mero 0. En este caso se le indicar? al usuario que ha abandonado el juego.
// Cuando el usuario introduzca un n?mero, habr? que ir gui?ndole diciendo si el n?mero introducido  por el teclado
// es mayor o menor que el n?mero buscado.
// Se dejar? que el usuario lea los mensajes el tiempo que desee hasta que pulse la tecla ENTER.
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
		Si (numeroUsuario < 50 o numeroUsuario > 150) y numeroUsuario <> 0  Entonces
			Escribir "El numero introducido no esta entre 50 y 150";
		FinSi
	Hasta Que (numeroUsuario>=50 y numeroUsuario<=150) o numeroUsuario = 0;
	
	intentos<-1;
	conseguido<-Falso;
	
	Mientras intentos < 10 y conseguido = Falso y numeroUsuario<>0 Hacer
		Si numeroUsuario=numeroSecreto Entonces
			Si intentos>=1 y intentos<=3 Entonces
				Escribir "GANASTE";
				conseguido <-Verdadero;
				intentos<-intentos+1;
			SiNo
				Si intentos>=4 y intentos<=6 Entonces
					Escribir "SEGUNDO";
					conseguido <-Verdadero;
					intentos<-intentos+1;
				SiNo
					Si intentos>=7 y intentos<=9 Entonces
						Escribir "TERCERO";
						conseguido <-Verdadero;
						intentos<-intentos+1;
					SiNo
						Si intentos=10 Entonces
							Escribir "CONSOLACION";
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
		Si intentos = 10 y conseguido = Falso Entonces
			Escribir "El juego terminado, has perdido, si deseas volver a intentarlo presiona 3, si deseas salir presiona 0";
			Leer numeroUsuario;
			Si numeroUsuario = 3 Entonces
				intentos <- 0;
				numeroSecreto<-aleatorio(50,150);
				Limpiar Pantalla;
				Escribir "Pulsa 1 para limpiar pantalla";
				Escribir "Pulsa 0 para finalizar el programa";
				Escribir "Escribe un numero entre 50 y 150";
			FinSi
			
		FinSi
		
		Si conseguido = Falso y intentos <> 10 Entonces
			Leer numeroUsuario;
		FinSi
		
		Si numeroUsuario = 1 y intentos <> 10 y conseguido = Falso Entonces
			Limpiar Pantalla;
			Leer numeroUsuario;
			Mientras numeroUsuario = 1 Hacer
				Leer numeroUsuario;
			FinMientras
		FinSi
		
		Mientras(numeroUsuario < 50 o numeroUsuario > 150) y intentos <> 10 Hacer
			
			Escribir "El numero introducido no esta entre 50 y 150";
			Leer numeroUsuario;
		FinMientras
		
	FinMientras;
	Escribir "El juego ha finalizado";
FinProceso

