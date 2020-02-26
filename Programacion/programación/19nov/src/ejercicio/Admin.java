package ejercicio;

public class Admin extends Empleado
{
	
	public Admin()
	{
		super();
	}
	
	public Admin(String n, double s)
	{
		super(n,s);
	}
	public static void main(String[] args)
	{
		String n = "juan";
		double s = 1500;
		
		Admin obj = new Admin(n,s);
		obj.Mostrar();
		obj.calculo(obj.getSueldo());
		obj.Mostrar();
	}
	
	public double calculo(double x)
	{	
		double j = x + x *0.05;
		this.setSueldo(j);
		return(this.getSueldo());
	}
}
