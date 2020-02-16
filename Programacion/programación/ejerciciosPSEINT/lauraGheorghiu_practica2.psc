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
	//numeroSecreto<-50+azar(150)+1;
	numeroSecreto<-aleatorio(50,150);
	Repetir
	 Escribir "Escribe un numero entre 50 y 150";
	 Leer numeroUsuario;
	Hasta Que numeroUsuario>=50 y numeroUsuario<=150;
	intentos<-11;
	Para intentos<-1 Hasta 10 Con Paso 1 Hacer
		Si numeroUsuario=numeroSecreto Entonces
			Si intentos>=1 y intentos<=3 Entonces
				Escribir "ganaste";
			SiNo
				Si intentos>=4 y intentos<=6 Entonces
					Escribir "secundo";
				SiNo
					Si intentos>=7 y intentos<=9 Entonces
						Escribir "tercero";
					SiNo
						Si intentos=10 Entonces
							Escribir "consolación";
						FinSi
					FinSi
				FinSi
			FinSi
		SiNo
			Si numeroUsuario>numeroSecreto  Entonces
				Escribir "muy alto";
			SiNo
				Escribir "muy bajo";
			FinSi
		FinSi
		Leer numeroUsuario; 
		
	FinPara
	Para intentos<-11 hasta 12 hacer
		
		Escribir "Perdiste, el juejo se ha finalizado";
		
		Escribir "Pulse enter para reiniciar el programa";
		leer seguir;
		Esperar tecla;
		
		Limpiar Pantalla;
	FinPara
FinProceso
