/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

// En java, el nombre de un archivo fuente debe coincidir con el nombre de la clase que contiene,
// por lo que este archivo deber�a llamarse "ADIVINA.java."

import java.io.*;

public class adivina {

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
	public static void main(String args[]) throws IOException {
		BufferedReader bufEntrada = new BufferedReader(new InputStreamReader(System.in));
		int intentos;
		int numerosecreto;
		int numerousuario;
		String seguir;
		int segur;
		// numeroSecreto<-50+azar(150)+1;
		numerosecreto = aleatorio(50,150);
		do {
			System.out.println("Escribe un numero entre 50 y 150");
			numerousuario = Integer.parseInt(bufEntrada.readLine());
		} while (!(numerousuario>=50 && numerousuario<=150));
		intentos = 11;
		for (intentos=1;intentos<=10;intentos++) {
			if (numerousuario==numerosecreto) {
				if (intentos>=1 && intentos<=3) {
					System.out.println("ganaste");
				} else {
					if (intentos>=4 && intentos<=6) {
						System.out.println("secundo");
					} else {
						if (intentos>=7 && intentos<=9) {
							System.out.println("tercero");
						} else {
							if (intentos==10) {
								System.out.println("consolaci�n");
							}
						}
					}
				}
			} else {
				if (numerousuario>numerosecreto) {
					System.out.println("muy alto");
				} else {
					System.out.println("muy bajo");
				}
			}
			numerousuario = Integer.parseInt(bufEntrada.readLine());
		}
		for (intentos=11;intentos<=12;intentos++) {
			System.out.println("Perdiste, el juejo se ha finalizado");
			System.out.println("Pulse enter para reiniciar el programa");
			seguir = bufEntrada.readLine();
			System.in.read(); // a diferencia del pseudoc�digo, espera un Enter, no cualquier tecla
			System.out.println(""); // no hay forma directa de borrar la consola en Java
		}
	}


}

