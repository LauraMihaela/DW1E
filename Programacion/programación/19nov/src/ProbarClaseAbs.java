
public class ProbarClaseAbs extends ClaseAbstarct  //se quita el error al redefinir el metodo abstarcto mas abajo
{

	public ProbarClaseAbs()
	{
		super("Pepe");
	}
	public static void main(String[] args)
	{
		//ClaseAbstarct obj = new ClaseAbstarct("Pepe"); //no se pued einstanciar un objeto diretamente

		ProbarClaseAbs obj = new ProbarClaseAbs();
		obj.impresion("hola");
		obj.devolver();
	}

	public void impresion(String x)  //hay que redifinir el metodo.
	{
		System.out.println("Impresion");
	}
}
