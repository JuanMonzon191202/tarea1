Algoritmo sin_titulo
	Dimension v[100]
	Escribir 'cuantos numeros desea'
	Definir n Como Entero
	Repetir
		Escribir 'numero positivo por favor'
		Leer n
	Hasta Que n>0
	Escribir 'ingrese numero a verificar'
	Para t<-1 Hasta n Hacer
		Leer v[t]
	FinPara
	Repetir
		Escribir 'QUE DESEA CONSULTAR'
		Escribir 'verificar si son impares (1)'
		Escribir 'verificar si pertenece a la serie fiboonaci(2)'
		Escribir 'verificar si es un numero primo(3)'
		Escribir 'verificar si tiene parte fracionaria(4)'
		Escribir 'nuevos numeros(5)'
		Leer f
		Segun f  Hacer
			1:
				Para t<-1 Hasta n Hacer
					h <- TRUNC(v[t])
					r <- v[t]-h
					Si r=0 Entonces
						Si v[t] MOD 2=0 Entonces
							a <- v[t]
						SiNo
							Escribir ,v[t]
						FinSi
					FinSi
				FinPara
			2:
				Para t<-1 Hasta n Hacer
					a1 <- 0
					a2 <- 1
					a3 <- 1
					a4 <- 2
					Mientras v[t]>a4 Hacer
						a1 <- a2
						a2 <- a3
						a3 <- a4
						a4 <- a2+a3
					FinMientras
					Si a4==v[t] Entonces
						h <- TRUNC(v[t])
						r <- v[t]-h
						Si r=0 Entonces
							Si v[t]>0 Entonces
								Escribir ,v[t]
							FinSi
						FinSi
					FinSi
				FinPara
			3:
				Para t<-1 Hasta n Hacer
					h <- TRUNC(v[t])
					r <- v[t]-h
					Si r=0 Entonces
						Si v[t]>0 Entonces
							cont <- 0
							Para i<-1 Hasta v[t] Hacer
								Si v[t] MOD i=0 Entonces
									cont <- cont+1
								FinSi
							FinPara
							Si cont=2 Entonces
								Escribir ,v[t]
							FinSi
						FinSi
					FinSi
				FinPara
			4:
				Para t<-1 Hasta n Hacer
					h <- TRUNC(v[t])
					r <- v[t]-h
					Si r=0 Entonces
						Si v[t]<=0 Entonces
							Escribir 'positivo'
						FinSi
					SiNo
						a <- h+r
						Escribir ,a
					FinSi
				FinPara
			5:
				Escribir 'cuantos valores nuevos'
				Leer n
				Escribir 'cuales son los valores'
				Para t<-1 Hasta n Hacer
					Leer v[t]
				FinPara
		FinSegun
		Escribir 'DESEA CONSULTAR DE NUEVO 1(si) 2(no)'
		Leer c2
	Hasta Que c2=2
FinAlgoritmo

