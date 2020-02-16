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
							Escribir "consolaci�n";
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
