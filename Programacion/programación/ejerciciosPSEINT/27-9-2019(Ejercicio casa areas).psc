//Fecha:27/9/2019
//Programador:David Tobalina
//Menu para hallar areas y circunferencias de distintas figuras
Subproceso circunferencia <- calculoCircunf ( radio )
	Definir circunferencia como real;
	circunferencia<-2*pi*radio;
Finsubproceso

Subproceso circulo <- calculoCircul ( radio )
	Definir circulo como real;
	circulo<-pi*radio^2;
FinSubproceso

Subproceso cuadrado <- calculoCuadr ( lado )
	Definir cuadrado como real;
	cuadrado<-lado^2;
FinSubproceso

Subproceso trapecio <- calculoTra ( base1,base2,altura )
	Definir trapecio como real;
	trapecio<-[(base1+base2)*altura]/2;	
FinSubproceso



Algoritmo MenuAreas
	
	Definir circunferencia,circulo,cuadrado,trapecio,radio,lado,base1,base2,altura como real;
	Definir opcion como entero;
	Definir seguir como caracter;
	
	Repetir
		
		Escribir "MENU CALCULO FIGURAS";
		Escribir "";
		Escribir "";
		Escribir "";
		Escribir "1.-Calculo circunferencia";
		Escribir "2.-Calculo area circulo";
		Escribir "3.-Calculo area cuadrado";
		Escribir "4.-Calculo area trapecio regular";
		Escribir "9.-Finalizar programa";
		Escribir "";
		Escribir "Introduce una opcion"sin saltar;
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Calculo circunferencia: Introduzca radio",Sin Saltar;
				Leer radio;
				circunferencia<-calculoCircunf (radio);
				Escribir "La circunferencia de radio ",radio," es de ",circunferencia," unidades";
				Escribir "";
				Escribir "";
				Escribir "Pulse enter para reiniciar el programa";
				leer seguir;
				Esperar 2 segundos;
				Limpiar Pantalla;
			2:
				Escribir "Calculo area circulo: Introduzca radio",Sin Saltar;
				Leer radio;
				circulo<-calculoCircul (radio);
				Escribir "El Circulo de radio ",radio," es de ",redon(circulo*100)/100," unidades";
				Escribir "";
				Escribir "";
				Escribir "Pulse enter para reiniciar el programa";
				leer seguir;
				Esperar 2 segundos;
				Limpiar Pantalla;
			3:
				Escribir "Calculo area cuadrado: Introduzca lado",Sin Saltar;
				Leer lado;
				cuadrado<-calculoCuadr (lado);
				Escribir "El area del cuadrado de lado  ",lado," es de ",cuadrado," unidades";
				Escribir "";
				Escribir "";
				Escribir "Pulse enter para reiniciar el programa";
				leer seguir;
				Esperar 2 segundos;
				Limpiar Pantalla;
			4:
				Escribir "Calculo area trapezio regular: Introduzca una base1,una base2 y una altura",Sin Saltar;
				Leer base1,base2,altura;
				trapecio<-calculoTra (base1,base2,altura);
				Escribir "El area del trapecio regular de base1 ",base1," base2 ",base2," y altura ",altura," es de ",trapecio," unidades";
				Escribir "";
				Escribir "";
				Escribir "Pulse enter para reiniciar el programa";
				leer seguir;
				Esperar 2 segundos;
				Limpiar Pantalla;
			9:
				Limpiar pantalla;
				Esperar 2 Segundos;
				Escribir "El programa ha finalizado";
				
			De Otro Modo:
				si opcion <>1 Y opcion <>2 Y opcion <>3 Y opcion <>4 Y opcion <>9 entonces;
					Escribir "Opcion introducida erronea";
					Esperar 2 segundos;
					Limpiar Pantalla;
					Escribir "Pulse enter para reiniciar el programa";
					leer seguir;
					Esperar 2 segundos;
					Limpiar Pantalla;
				FinSi
				
				
		FinSegun
		
		
	Hasta Que opcion=9	
	
FinAlgoritmo
