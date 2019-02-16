Proceso sin_titulo
	Definir i,cont Como Entero;
	Definir v,totalVeloc,promedio,min,seg Como Real;
	Definir residuo1A,residuo2A,residuo1B,residuo2B Como Real;
	promedio <- 0;
	totalVeloc <- 0;
	cont <- 0;
	Para i<-1 Hasta 5 Hacer
		Escribir 'ingrese  el tiempo (minuto y segundos) del ',i,' corredor';
		Leer min,seg;
		residuo1A <- trunc(min);
		residuo1B <- min-residuo1A;
		residuo2A <- trunc(seg);
		residuo2B <- seg-residuo2A;
		Escribir ':',residuo1B,' :',residuo2B;
		Si residuo1B==0 y residuo2B==0 Entonces
			Si min>=0 O seg>=0 Entonces
				Si min<=60 Y seg<=60 Entonces
					Si min==0 Y seg==0 Entonces
						Escribir 'este corredor al parecer quedo inmobil o se cayo :)';
					SiNo
						cont <- cont+1;
						seg <- seg+(min*60);
						v <- 1500/seg;
						Escribir 'la velocidad es de:',v,'m/s';
						Si seg<=230 Entonces
							totalVeloc <- totalVeloc+v;
							promedio <- totalVeloc/cont;
							Escribir 'suma  ',totalVeloc;
						FinSi
					FinSi
				SiNo
					i <- i-1;
					Escribir 'error introduzca de nuevo el tiempo';
				FinSi
			SiNo
				Escribir 'error introduzca de nuevo el tiempo';
				i <- i-1;
			FinSi
		SiNo
			Escribir "Error";
			i <- i+4;
		FinSi
	FinPara
	Si promedio>0 Entonces
		Escribir 'el promedio de los corredores del mejor tiempo es:  ',promedio;
	SiNo
		Escribir 'no hay tiempos para promediar';
	FinSi
FinProceso

