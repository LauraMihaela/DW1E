package colecciones;

import java.util.HashSet;

public class HashSetLauraGheorghiu {

	public static void main(String[] args) {

		// Punto 2
		Arboles arbolUno = new Arboles("Roble", 12.5, 80, "Canada", true);
		Arboles arbolDos = new Arboles("Encina", 5.25, 90, "España", false);
		Arboles arbolTres = new Arboles("Pino", 22.5, 80, "Italia", false);
		Arboles arbolCuatro = new Arboles("Roble", 5.5, 15, "Canada", true);
		Arboles arbolCinco = new Arboles("Manzano", 3.5, 60, "India", false);

		HashSet<Arboles> hashSetArboles = new HashSet<Arboles>();
		hashSetArboles.add(arbolUno);
		hashSetArboles.add(arbolDos);
		hashSetArboles.add(arbolTres);
		hashSetArboles.add(arbolCuatro);
		hashSetArboles.add(arbolCinco);

		// Punto 3
		System.out.println("El tamano del HashSet es de " + hashSetArboles.size());

		// Punto 4
		// Crear un array con los datos del HashSet
		Arboles[] arrayArboles = new Arboles[hashSetArboles.size()];
		int k = 0;
		for (Arboles arbol : hashSetArboles) {
			arrayArboles[k] = arbol;
			k++;
		}

		// Punto 5
		System.out.println("\nLista Array");
		for (int i = 0; i < arrayArboles.length; i++) {
			Arboles arbol = arrayArboles[i];
			System.out.println("Nombre del arbol: " + arbol.nombre);
			System.out.println("Altura: " + arbol.altura);
			System.out.println("Edad en años: " + arbol.añosEdad);
			System.out.println("Lugar de origen: " + arbol.lugarOrigen);
			System.out.println("Lugar de origen: " + (arbol.hojaCaduca ? "SI" : "NO"));
			System.out.println("********************************");

		}
		System.out.println("\nLista HashSet\n");
		for (Arboles arbol : arrayArboles) {
			System.out.println("Nombre del arbol: " + arbol.nombre);
			System.out.println("Altura: " + arbol.altura);
			System.out.println("Edad en años: " + arbol.añosEdad);
			System.out.println("Lugar de origen: " + arbol.lugarOrigen);
			System.out.println("Lugar de origen: " + (arbol.hojaCaduca ? "SI" : "NO"));
			System.out.println("********************************");

		}

	}

}
