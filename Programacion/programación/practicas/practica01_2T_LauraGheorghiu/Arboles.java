package colecciones;

import java.util.ArrayList;

public class Arboles {

	String nombre;
	double altura;
	int añosEdad;
	String lugarOrigen;
	boolean hojaCaduca;

	public Arboles(String nombre, double altura, int añosEdad, String lugarOrigen, boolean hojaCaduca) {
		super();
		this.nombre = nombre;
		this.altura = altura;
		this.añosEdad = añosEdad;
		this.lugarOrigen = lugarOrigen;
		this.hojaCaduca = hojaCaduca;
	}

	public Arboles() {
		super();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((lugarOrigen == null) ? 0 : lugarOrigen.hashCode());
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Arboles other = (Arboles) obj;
		if (lugarOrigen == null) {
			if (other.lugarOrigen != null)
				return false;
		} else if (!lugarOrigen.equals(other.lugarOrigen))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		return true;
	}

	



}
