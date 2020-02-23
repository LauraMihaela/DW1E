package Animal;

public class Animal1
{
private String nombre;
private String habitat;
private String alimentacion;
private boolean extincion;
private int patas;
private String especie;
private boolean sexoF;


public String getNombre() 
{
	return nombre;
}
public void setNombre(String nombre)
{
    this.nombre = nombre;
}
public String getHabitat()
{
    return habitat;
}
public void setHabitat(String habitat)
{
    this.habitat = habitat;
}
public String getAlimentacion()
{
    return alimentacion;
}
public void setAlimentacion(String alimentacion)
{
    this.alimentacion = alimentacion;
}
public boolean isExtincion()
{
    return extincion;
}
public void setExtincion(boolean extincion)
{
    this.extincion = extincion;
}
public int getPatas()
{
    return patas;
}
public void setPatas(int patas)
{
    this.patas = patas;
}
public String getEspecie() 
{
    return especie;
}
public void setEspecie(String especie)
{
    this.especie = especie;
}
public boolean isSexoF()
{
    return sexoF;
}
public void setSexoF(boolean sexoF)
{
    this.sexoF = sexoF;
}


    public Animal1() {};
    
    public Animal1(String nombre,String habitat,boolean extincion)
    {
        this.nombre=nombre;
        this.habitat=habitat;
        this.extincion=extincion;
        
    }
    public Animal1(String nombre,String habitat,String alimentacion, boolean extincion, int patas,String especie,boolean sexoF)
    {
        this.nombre=nombre;
        this.habitat=habitat;
        this.alimentacion=alimentacion;
        this.extincion=extincion;
        this.patas=patas;
        this.especie=especie;
        this.sexoF=sexoF;
    }
    
    
}