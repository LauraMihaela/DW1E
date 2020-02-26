package ejercicio;

abstract class Empleado
{
	private String nombre;
	private double sueldo;
	
	public Empleado()
	{}
	
	public Empleado(String n,double s)
	{
		nombre = n;
		sueldo = s;
	}
	
	public void Mostrar()
	{
		System.out.println("El empleado " + nombre + " cobra " + sueldo + " euros.");
	}
	
	public String getNombre() {
		return nombre;
	}

	

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setSueldo(double sueldo) {
		this.sueldo = sueldo;
	}

	public double getSueldo() {
		return sueldo;
	}

	

	abstract public double calculo(double x);
	
	
	
}
