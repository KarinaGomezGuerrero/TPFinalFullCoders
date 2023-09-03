Algoritmo CalcularSalarios
	Definir numTrabajadores, horasTrabajadas, tarifaPorHora, salario, totalSalarios, totalHorasExtras Como Real
	Definir categoria, bonificacionPorcentaje Como Entero
	Escribir 'Ingrese el número de Empleados: '
	Leer numTrabajadores
	totalSalarios <- 0
	// Menu para ingresar la cantidad de trabajadores, categoria, cantidad de horas trabajadas y valor hora que corresponde
	Para i<-1 Hasta numTrabajadores Hacer
		Escribir 'Empleado ', i
		Escribir 'Ingrese la categoría del empleado (1: Tiempo completo, 2: Medio tiempo, 3: Contratista): '
		Leer categoria
		Escribir 'Ingrese la cantidad de horas trabajadas: '
		Leer horasTrabajadas
		Escribir 'Ingrese la tarifa por hora: '
		Leer tarifaPorHora
		// Calculo de bonificacion segun su categoria
		Si categoria=1 Entonces
			bonificacionPorcentaje <- 10
		FinSi
		Si categoria=2 Entonces
			bonificacionPorcentaje <- 5
		FinSi
		Si categoria=3 Entonces
			bonificacionPorcentaje <- 2
		FinSi
		// Calculo de horas extras
		Si horasTrabajadas<=40 Entonces
			salario <- horasTrabajadas*tarifaPorHora
		SiNo
			horasRegulares <- 40
			horasExtras <- horasTrabajadas-40
			salario <- (horasRegulares*tarifaPorHora)+(horasExtras*tarifaPorHora*1.5)
		FinSi
		// Muestra de suma total de los salarios y las horas extras realizadas segun los trabajadores ingresados
		totalSalarios <- totalSalarios+salario
		totalHorasExtras <- totalHorasExtras+horasExtras
		Escribir 'El salario del empleado es: ', salario
		Escribir 'La cantidad de horas extras realizadas es: ', horasExtras
	FinPara
	Escribir 'La suma total de los salarios de los empleados es: ', totalSalarios
	Escribir 'La suma total de las horas extras realizadas por los empleados es: ', totalHorasExtras
FinAlgoritmo
