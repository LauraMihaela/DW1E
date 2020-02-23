package seresvivos;

import java.util.*;

public class Animal  extends SerVivo
{
	
	public Animal(String nombre,double altura, int edad, int patas, String clase, boolean extincion)
	{
		super(nombre,altura,edad,patas,clase,extincion);
	}
	
	public static void main(String[] args) 
	{
		String nom;
		double alt;
		int ed;
		int pat;
		String come;
		boolean ext;
		String s;
		
		int j;
		int k;
		double max;
		
		Animal miArray[] =new Animal[4];
		ArrayList <Animal> miArrayList = new ArrayList <Animal> ();
		Scanner teclado = new Scanner(System.in);
		
		System.out.println("Vas a introducir datos de 4 animales");
		
		for(int i = 0;i < miArray.length;i++)
		{	
			j = i + 1;
			System.out.println("Animal0"+j);
			
			System.out.println("Nombre del animal: ");
			nom = teclado.next();
			
			System.out.println("Altura del animal: ");
			alt = teclado.nextDouble();
			
			System.out.println("Edad del animal: ");
			ed = teclado.nextInt();
			
			System.out.println("Número de patas del animal(0 si es una planta): ");
			pat = teclado.nextInt();
			
			if (pat == 0)
			{
				come="planta";
			}
			else
			{
				System.out.println("0 para carnivoro, 1 para herbivoro");
				k = teclado.nextInt();
				if(k == 0)
				{
					come="carnivoro";
				}
				else
				{
					come = "herbivoro";
				}
			}
			System.out.println("Si el especimen esta extinto introuce  s, en caso contrario n");
			s = teclado.next();
			if(s.equals("s"))
				ext = true;
			else
				ext = false;
			
			miArray[i] = new Animal(nom,alt,ed,pat,come,ext);
			
		}//for
		
		max = miArray[0].getAltura();

		for (Animal v:miArray)
		{
			miArrayList.add(v);
		}
		
		Iterator <Animal> iter = miArrayList.iterator();
		
		while (iter.hasNext())
		{
			System.out.println(iter.next());
			
			/*System.out.println(iter.next().getAltura());
			System.out.println(iter.next().getEdad());
			System.out.println(iter.next().getPatas());
			System.out.println(iter.next().getClase());
			System.out.println(iter.next().isExtincion());
			System.out.println(iter.next().getNombre());*/
		}
		
		while(iter.hasNext())
		{
			if(iter.next().getAltura() > max)
				max = iter.next().getAltura();
		}
		
		System.out.println("La altura maxima es " + max);
	}
	
	
	public String toString()
	{
		String mensaje = "El animal " + this.getNombre() + " mide " + this.getAltura() + "y tiene " + this.getPatas() + " patas. Come como un " + this.getClase() + 
				" EXTINCION: " + this.isExtincion();
		return mensaje;
	}
	public String comer()
	{
		return ("El animal ha comido una gacela");
	}
	
	public String beber()
	{
		return ("El animal ha bebido una copa");
	}

}