package seresvivos;

abstract class SerVivo 
{
	private String nombre;
	private double altura;
	private int edad;
	private int patas;
	private String clase;
	private boolean extincion;
	
	public SerVivo() {}
	
	public SerVivo(String nombre,double altura, int edad, int patas, String clase, boolean extincion)
	{
		this.nombre = nombre;
		this.altura = altura;
		this.edad = edad;
		this.patas = patas;
		this.clase = clase;
		this.extincion = extincion;
	}
	
	
	public void deseoVivir()
	{
		System.out.println("I WANT TO BE ALIVE");
	}
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public int getPatas() {
		return patas;
	}

	public void setPatas(int patas) {
		this.patas = patas;
	}

	public String getClase() {
		return clase;
	}

	public void setClase(String clase) {
		this.clase = clase;
	}

	public boolean isExtincion() {
		return extincion;
	}

	public void setExtincion(boolean extincion) {
		this.extincion = extincion;
	}

	abstract public String comer();
	
	abstract public String beber();
}
