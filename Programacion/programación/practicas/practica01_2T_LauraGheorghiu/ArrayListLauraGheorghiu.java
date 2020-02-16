package colecciones;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ArrayListLauraGheorghiu {
	public static void main(String[] args) {
		// Punto 1
		ArrayList<Arboles> arrayListLauraGheorghiu = new ArrayList<Arboles>();
		// Punto 2
		Arboles arbolUno = new Arboles("Roble", 12.5, 80, "Canada", true);
		Arboles arbolDos = new Arboles("Encina", 5.25, 90, "Espa�a", false);
		Arboles arbolTres = new Arboles("Pino", 22.5, 80, "Italia", false);
		Arboles arbolCuatro = new Arboles("Roble", 5.5, 15, "Canada", true);
		Arboles arbolCinco = new Arboles("Manzano", 3.5, 60, "India", false);

		arrayListLauraGheorghiu.add(arbolUno);
		arrayListLauraGheorghiu.add(arbolDos);
		arrayListLauraGheorghiu.add(arbolTres);
		arrayListLauraGheorghiu.add(arbolCuatro);
		arrayListLauraGheorghiu.add(arbolCinco);

		// Punto 3
		// .- Si el ArrayList no est� vac�a crear un array a partir de los datos del
		// ArrayList
		Arboles[] ArrayArboles;

		if (arrayListLauraGheorghiu.size() != 0) {

			ArrayArboles = new Arboles[arrayListLauraGheorghiu.size()];
			int i = 0;

			for (Arboles arboles : arrayListLauraGheorghiu) {
				ArrayArboles[i] = arboles;
				i++;
			}
			
		}
		
		// Punto 4
		// Comprobar si existe, en el arrayList, el elemento con nombre Peral y lugar de
		// origen Canad�. Visualizar el resultado.
		boolean existe = false;

		for (Arboles arbol : arrayListLauraGheorghiu) {
			if (arbol.nombre.equals("Perales") && arbol.lugarOrigen.equals("Canada")) {
				existe = true;
			}
		}

		if (existe == true) {
			System.out.println("* El �rbol Peral de lugar de origen Canad�, si existe ");
		} else {
			System.out.println("* El �rbol Peral de lugar de origen Canad�, no existe ");
		}
		// Punto 5
		// 5.- Conocer y visualizar la posici�n en la que est� el elemento de altura 3.5
		Arboles arbolBuscado = null;
		for (Arboles arbol : arrayListLauraGheorghiu) {
			if (arbol.altura == 3.5) {
				arbolBuscado = arbol;
			}
		}
		System.out.println("* La posicion en la que est� el elemento de altura 3.5 es "
				+ arrayListLauraGheorghiu.indexOf(arbolBuscado));
		// Punto 6
		// Reemplazar los a�os de 90 a 95 en los elementos de nombre Encina
		
				for (Arboles arbol : arrayListLauraGheorghiu) {
			if (arbol.nombre.equals("Encina") && arbol.a�osEdad == 90) {
				arbol.a�osEdad = 95;
				System.out.println("* Edad de encinas de 90 a�os se han cambiado a " + arbol.a�osEdad);

			}
		}

		// Punto 7
		// Borrar el elemento si se cumple que el nombre es Roble y la hoja es caduca

				ArrayList<Arboles> ArbolAEliminar = new ArrayList<Arboles>();
		for (Arboles arbol : arrayListLauraGheorghiu) {
			if (arbol.nombre.equals("Roble") && arbol.hojaCaduca == true) {
				ArbolAEliminar.add(arbol);
			}
		}

		for (Arboles arboles : ArbolAEliminar) {
			arrayListLauraGheorghiu.remove(arboles);
			System.out.println("* Se ha borrado el Roble de hoja caduca ");
		}
		// Punto 8
		// Ajustar el ArrayList a los elementos actuales
		System.out.println();
		for (Arboles arboles : arrayListLauraGheorghiu) {
			System.out.print("");

		}
		
		// Punto 10
		// Listar
		System.out.println("Por a�os");
		for (Arboles arboles : arrayListLauraGheorghiu) {
			System.out.println("Nombre: " + arboles.nombre);
			System.out.println("Altura: " + arboles.altura);
			System.out.println("Lugar de origen: " + arboles.lugarOrigen);
			System.out.println("A�os de edad: " + arboles.a�osEdad);
			System.out.println("Hoja caduca: " + (arboles.hojaCaduca ? "Si" : "No"));
			System.out.println();
		}
		
	}
}
