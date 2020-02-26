
public abstract class ClaseAbstarct
{
	private String nombre;
	
	public ClaseAbstarct() {}
	
	public ClaseAbstarct(String n)
	{
		nombre = n;
	}
	
	public String devolver()
	{
		return (nombre);
	}
	
	abstract public void impresion(String x);  //metodo abstracto, solo ponemos el prototipo
}
