package colecciones;

import java.util.HashMap;

public class HashMapLauraGheorghiu {

	public static void main(String[] args) {

		// 1.- La clase p�blica se llamar� HashMapNombreApellido (sin tildes) 
		// 2.- Se introducir�n el n�mero de posici�n, que ser� la clave, con un entero y
		// el
		// nombre, que ser� el valor, con un string, de los cinco nominados al premio
		// Nobel. (1,Maria Salomea Sklodowska), (2,Santiago Ram�n y Cajal), (3,T�ano de
		// Crotona), (4,Mariano Barbacid), (5,Augusta Ada Byron). Las nacionalidades de
		// cada nominado son: 1.- Polaca, 2.- Espa�ola, 3.- Griega, 4.- Espa�ola, 5.- 
		// Inglesa
		// 3.- Visualizar la longitud del HashMap 
		// 4.- Visualizar a los nominados que tengan de clave 1, 2 y 3 de tal forma que
		// se observe
		// la posici�n, el nombre y un texto que indicar� la nacionalidad de cada
		// nominado.
		// Ejemplo: 1 Maria Salomea Sklodowska Polaca
		// 5.- El cuarto ha sido sustituido por Margarita Salas Falgueras con
		// nacionalidad Espa�ola
		// 6.- Listar el HashMap completo

		// Creamos los hashMaps
		HashMap<Integer, String> hashMapNominados = new HashMap<Integer, String>();
		HashMap<Integer, String> hashMapNacionalidad = new HashMap<Integer, String>();
		// A�adimos los nominados
		hashMapNominados.put(1, "Maria Salomea Sklodowska");
		hashMapNominados.put(2, "Santiago Ramon y Cajal");
		hashMapNominados.put(3, "Teano de Crotona");
		hashMapNominados.put(4, "Mariano Barbacid");
		hashMapNominados.put(5, "Augusta Ada Byron");
		// A�adimos las nacionalidades
		hashMapNacionalidad.put(1, "Polaca");
		hashMapNacionalidad.put(2, "Espa�ola");
		hashMapNacionalidad.put(3, "Griega");
		hashMapNacionalidad.put(4, "Espa�ola");
		hashMapNacionalidad.put(5, "Inglesa");

		//Obtenemos la longitud del hashMap y la imprimimos
		int longitudHashMap = hashMapNominados.size();
		System.out.println("La longitud del hashMap es: " + longitudHashMap+"\n");
		//Imprimimos los tres primeros nominados
		for (int i = 1; i <= 3; i++) {
			System.out.println(
					"Posicion: " + i + ". Nombre: " + hashMapNominados.get(i) + ". Nacionalidad: " + hashMapNacionalidad.get(i));
		}
		//Sustutuimos la posicion 4 por Margarita Salas Falgueras
		hashMapNominados.put(4, "Margarita Salas Falgueras");
		
		//Imprimimos la lista completa del hashMap
		System.out.println("\nLista del hashMap completo\n");
		for (int i = 1; i <= hashMapNominados.size(); i++) {
			System.out.println("Posicion: " + i + " *** " + "Nombre: " + hashMapNominados.get(i));
		}
	}

}























