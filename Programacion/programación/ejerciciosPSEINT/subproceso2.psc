// calculo area triangulo
//26.09.2019
//laura



SubProceso area <- CalculoArea ( base,altura )
	definir area Como Real;
	area<-(base * altura)/2;
FinSubProceso





Proceso AriaTriangulo
	Definir base, altura, resultado Como Real;
	Escribir "Introduzca la base: " sin Saltar;
	Leer base;
	Escribir "Introduzca la altura:" sin Saltar;
	Leer altura;
	resultado<- CalculoArea(base,altura);
	Escribir "El aria del triangulo de base",base, " y altura ",altura, "es de ",resultado,"unidades";
	
FinProceso
