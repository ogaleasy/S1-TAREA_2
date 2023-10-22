//ENTRADA: Pedimos al usuario que ingrese un carácter (leer).
//PROCESO: Verificamos si el carácter está entre 'a' y 'z' o entre 'A' y 'Z', o si es un signo de puntuación.
//SALIDA: Mostramos el resultado.
Funcion verificarCaracter
	Definir carac Como Caracter
	
	Escribir "Ingrese un carácter: "
	Leer carac
	
	Si (caracter >= 'a' y caracter <= 'z') o (caracter >= 'A' y caracter <= 'Z') Entonces
		Escribir "El carácter ingresado es una letra."
	SiNo
		Si caracter == ',' o caracter == '.' o caracter == ';' o caracter == ':' Entonces
			Escribir "El carácter ingresado es un signo de puntuación."
		SiNo
			Escribir "El carácter ingresado es otro tipo de carácter."
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese un carácter (leer).
//PROCESO: Verificamos si el carácter es un número (0...9) o una vocal (a, e, i, o, u).
//SALIDA: Mostramos el resultado.
Funcion verificarCaracter2
	Definir carac Como Caracter
	
	Escribir "Ingrese un carácter: "
	Leer carac
	
	Si caracter >= '0' y caracter <= '9' Entonces
		Escribir "El carácter ingresado es un número."
	SiNo
		Si caracter == 'a' o caracter == 'e' o caracter == 'i' o caracter == 'o' o caracter == 'u' Entonces
			Escribir "El carácter ingresado es una vocal."
		SiNo
			Escribir "El carácter ingresado no es ni un número ni una vocal."
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese un carácter vocal (leer).
//PROCESO: Calculamos el valor ASCII del carácter vocal.
//SALIDA: Mostramos el valor ASCII.
Funcion obtenerValorASCII
	Definir carac Como Caracter
	
	Escribir "Ingrese una vocal (a, e, i, o, u): "
	Leer carac
	
	Si caracter == 'a' o caracter == 'A' Entonces
		Escribir "El valor ASCII de ", caracter, "es: 65"
	SiNo Si caracter == 'e' o caracter == 'E' Entonces
			Escribir "El valor ASCII de ", caracter, "es: 69"
		SiNo Si caracter == 'i' o caracter == 'I' Entonces
				Escribir "El valor ASCII de ", caracter, "es: 73"
			SiNo Si caracter == 'o' o caracter == 'O' Entonces
					Escribir "El valor ASCII de ", caracter, "es: 79"
				SiNo Si caracter == 'u' o caracter == 'U' Entonces
						Escribir "El valor ASCII de ", caracter, "es: 85"
					SiNo
						Escribir "El carácter ingresado no es una vocal."
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese dos nombres (leer).
//PROCESO: Comparamos los nombres para verificar si son iguales o si el primero es menor que el segundo.
//SALIDA: Mostramos el resultado.
Funcion compararNombres
	Definir nombre1, nombre2 Como Cadena
	
	Escribir "Ingrese el primer nombre: "
	Leer nombre1
	Escribir "Ingrese el segundo nombre: "
	Leer nombre2
	
	Si nombre1 == nombre2 Entonces
		Escribir "Los nombres son iguales."
	SiNo
		Si nombre1 < nombre2 Entonces
			Escribir "El primer nombre es menor que el segundo."
		SiNo
			Escribir "El primer nombre es mayor que el segundo."
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese dos números (leer).
//PROCESO: Comparamos los números para verificar si son iguales o si el primero es menor que el segundo dado su valor.
//SALIDA: Mostramos el resultado.
Funcion compararNumeros
	Definir num1, num2 Como Real
	
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2
	
	Si num1 == num2 Entonces
		Escribir "Los números son iguales."
	SiNo
		Si num1 < num2 Entonces
			Escribir "El primer número es menor que el segundo."
		SiNo
			Escribir "El primer número es mayor que el segundo."
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese tres números (leer).
//PROCESO: Comparamos los números para determinar cuál es el mayor o si son iguales.
//SALIDA: Mostramos el resultado.

Funcion encontrarMayor
	Definir num1, num2, num3 Como Real
	
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2
	Escribir "Ingrese el tercer número: "
	Leer num3
	
	Si num1 == num2 y num2 == num3 Entonces
		Escribir "Los tres números son iguales."
	SiNo
		Si num1 >= num2 y num1 >= num3 Entonces
			Escribir "El primer número es el mayor."
		SiNo
			Si num2 >= num1 y num2 >= num3 Entonces
				Escribir "El segundo número es el mayor."
			SiNo
				Escribir "El tercer número es el mayor."
			FinSi
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese un número (leer).
//PROCESO: Verificamos si el número es neutro, positivo o negativo.
//SALIDA: Mostramos el resultado.
Funcion determinarSignoNumero
	Definir numero Como Real
	
	Escribir "Ingrese un número: "
	Leer numero
	
	Si numero == 0 Entonces
		Escribir "El número es neutro."
	SiNo
		Si numero > 0 Entonces
			Escribir "El número es positivo."
		SiNo
			Escribir "El número es negativo."
		FinSi
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese la cantidad de lápices (leer).
//PROCESO: Calculamos el costo total considerando la cantidad de lápices y el precio por lápiz.
//SALIDA: Mostramos el costo total.
Funcion calcularCostoLapices
	Definir cantidadLapices Como Entero
	
	Escribir "Ingrese la cantidad de lápices: "
	Leer cantidadLapices
	
	Si cantidadLapices > 1000 Entonces
		costoTotal = cantidadLapices * 1
	SiNo
		costoTotal = cantidadLapices * 1.50
	FinSi
	
	Escribir "El costo total es: $", costoTotal
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el precio del traje (leer).
//PROCESO: Calculamos el precio con el descuento dependiendo del precio del traje.
//SALIDA: Mostramos el precio final.
Funcion calcularPrecioTraje
	Definir precioTraje Como Real
	
	Escribir "Ingrese el precio del traje: "
	Leer precioTraje
	
	Si precioTraje > 2500 Entonces
		precioConDescuento = precioTraje - (precioTraje * 0.15)
	SiNo
		precioConDescuento = precioTraje - (precioTraje * 0.08)
	FinSi
	
	Escribir "El precio con descuento es: $", precioConDescuento
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el número de personas (leer).
//PROCESO: Calculamos el presupuesto dependiendo del número de personas.
//SALIDA: Mostramos el presupuesto.
Funcion calcularPresupuestoBanquete
	Definir numPersonas Como Entero
	
	Escribir "Ingrese el número de personas para el banquete: "
	Leer numPersonas
	
	Si numPersonas > 300 Entonces
		presupuesto = numPersonas * 75.00
	SiNo
		Si numPersonas > 200 y numPersonas <= 300 Entonces
			presupuesto = numPersonas * 85.00
		SiNo
			presupuesto = numPersonas * 95.00
		FinSi
	FinSi
	
	Escribir "El presupuesto para ", numPersonas, " personas es: $", presupuesto
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el tipo (A o B) y el tamaño (1 o 2) de la uva, y el precio inicial por kilo.
//PROCESO: Calculamos la ganancia del productor considerando las condiciones mencionadas.
//SALIDA: Mostramos la ganancia obtenida por el productor.
Funcion calcularGananciaUva
	Definir tipoUva, tamanoUva Como Caracter
	Definir precioInicial, ganancia Como Real
	
	Escribir "Ingrese el tipo de uva (A o B): "
	Leer tipoUva
	Escribir "Ingrese el tamaño de uva (1 o 2): "
	Leer tamanoUva
	Escribir "Ingrese el precio inicial por kilo de uva: "
	Leer precioInicial
	
	Si tipoUva == "A" Entonces
		Si tamanoUva == "1" Entonces
			ganancia = precioInicial + 0.20
		SiNo
			ganancia = precioInicial + 0.30
		FinSi
	SiNo
		Si tamanoUva == "1" Entonces
			ganancia = precioInicial - 0.30
		SiNo
			ganancia = precioInicial - 0.50
		FinSi
	FinSi
	
	Escribir "La ganancia del productor es: $", ganancia
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el número de alumnos.
//PROCESO: Calculamos el costo total para la compañía de autobuses y el costo por alumno.
//SALIDA: Mostramos el costo total para la compañía de autobuses y el costo por alumno.
Funcion calcularCostoViaje
	Definir numAlumnos Como Entero
	
	Escribir "Ingrese el número de alumnos para el viaje: "
	Leer numAlumnos
	
	Si numAlumnos >= 100 Entonces
		costoPorAlumno = 65.00
	SiNo
		Si numAlumnos >= 50 y numAlumnos <= 99 Entonces
			costoPorAlumno = 70.00
		SiNo
			Si numAlumnos >= 30 y numAlumnos <= 49 Entonces
				costoPorAlumno = 95.00
			SiNo
				costoPorAlumno = 0
				Escribir "El costo de renta del autobús es de $4000.00"
			FinSi
		FinSi
	FinSi
	
	Si costoPorAlumno > 0 Entonces
		costoTotal = costoPorAlumno * numAlumnos
		Escribir "El costo por alumno es: $", costoPorAlumno
		Escribir "El costo total para la compañía de autobuses es: $", costoTotal
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el tipo de autobús (A, B o C), la distancia en kilómetros y el número de personas.
//PROCESO: Calculamos el costo total y el costo por persona dependiendo del tipo de autobús y el número de personas.
//SALIDA: Mostramos el costo total y el costo por persona.
Funcion calcularCostoViaje2
	Definir tipoBus Como Caracter
	Definir distanciaKm, numPersonas Como Entero
	
	Escribir "Ingrese el tipo de autobús (A, B o C): "
	Leer tipoBus
	Escribir "Ingrese la distancia en kilómetros: "
	Leer distanciaKm
	Escribir "Ingrese el número de personas: "
	Leer numPersonas
	
	Si numPersonas < 20 Entonces
		numPersonas = 20
	FinSi
	Si tipoBus == "A" Entonces
		precioKmPersona = 2.0
	SiNo
		Si tipoBus == "B" Entonces
			precioKmPersona = 2.5
		SiNo
			precioKmPersona = 3.0
		FinSi
	FinSi
	
	costoTotal = precioKmPersona * distanciaKm * numPersonas
	costoPorPersona = costoTotal / numPersonas
	
	Escribir "El costo total del viaje es: $", costoTotal
	Escribir "El costo por persona es: $", costoPorPersona
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese la cantidad de colas.
//PROCESO: Calculamos el costo total considerando las condiciones mencionadas y luego el 12% del IVA.
//SALIDA: Mostramos la cantidad comprada, costo por unidad, total sin IVA, IVA y total a pagar.
Funcion calcularCostoColas
	Definir cantidadColas Como Entero
	
	Escribir "Ingrese la cantidad de colas a comprar: "
	Leer cantidadColas
	
	Si cantidadColas > 23 Entonces
		costoUnidad = 0.50
	SiNo
		costoUnidad = 0.50 * 1.20
	FinSi
	
	totalSinIva = costoUnidad * cantidadColas
	iva = totalSinIva * 0.12
	totalAPagar = totalSinIva + iva
	
	Escribir "Cantidad comprada: ", cantidadColas, " colas"
	Escribir "Costo por unidad: $", costoUnidad
	Escribir "Total sin IVA: $", totalSinIva
	Escribir "IVA (12%): $", iva
	Escribir "Total a pagar: $", totalAPagar
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese la cantidad de productos comprados y el precio original por producto.
//PROCESO: Calculamos el descuento inicial, el costo total, el descuento adicional y el valor a pagar según las condiciones.
//SALIDA: Mostramos la cantidad comprada, el precio original, el descuento inicial, el total, el descuento adicional y el valor a pagar.
Funcion calcularCostoProductos
	Definir cantidadComprada Como Entero
	Definir precioOriginal Como Real
	
	Escribir "Ingrese la cantidad de productos comprados: "
	Leer cantidadComprada
	Escribir "Ingrese el precio original por producto: "
	Leer precioOriginal
	
	Si cantidadComprada > 19 Entonces
		descuentoInicial = 0.10
	SiNo
		descuentoInicial = 0.20
	FinSi
	costoTotal = cantidadComprada * precioOriginal * (1 - descuentoInicial)
	descuentoAdicional = costoTotal * 0.05
	valorAPagar = costoTotal - descuentoAdicional
	
	Escribir "Cantidad comprada: ", cantidadComprada, " productos"
	Escribir "Precio original por producto: $", precioOriginal
	Escribir "Descuento inicial: ", descuentoInicial * 100, "%"
	Escribir "Total: $", costoTotal
	Escribir "Descuento adicional: $", descuentoAdicional
	Escribir "Valor a pagar: $", valorAPagar
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el número de cita.
//PROCESO: Calculamos el costo de la consulta y el monto total gastado en el tratamiento según las condiciones.
//SALIDA: Mostramos cuánto pagará el paciente por la cita y el monto total gastado en el tratamiento.
Funcion calcularCostoConsulta
	Definir numeroCita Como Entero
	
	Escribir "Ingrese el número de cita: "
	Leer numeroCita
	
	Si numeroCita <= 3 Entonces
		costoConsulta = 200.00
	SiNo
		Si numeroCita <= 5 Entonces
			costoConsulta = 150.00
		SiNo
			Si numeroCita <= 8 Entonces
				costoConsulta = 100.00
			SiNo
				costoConsulta = 50.00
			FinSi
		FinSi
	FinSi
	montoTotalTratamiento = (numeroCita) * costoConsulta
	
	Escribir "El costo de la consulta es: $", costoConsulta
	Escribir "El monto total gastado en el tratamiento es: $", montoTotalTratamiento
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese la clave del artículo y los costos de materia prima y gastos de fabricación.
//PROCESO: Calculamos el costo de producción y el precio de venta según las condiciones dadas.
//SALIDA: Mostramos el precio de venta.
Funcion calcularPrecioVenta
	Definir claveArticulo Como Entero
	Definir costoMateriaPrima Como Real
	Definir gastosFabricacion Como Real
	
	Escribir "Ingrese la clave del artículo (1, 2, 3, 4, 5 o 6): "
	Leer claveArticulo
	Escribir "Ingrese el costo de materia prima: "
	Leer costoMateriaPrima
	Escribir "Ingrese los gastos de fabricación: "
	Leer gastosFabricacion
	
	Si claveArticulo = 3 O claveArticulo = 4 Entonces
		costoManoObra = 0.75 * costoMateriaPrima
	SiNo
		Si claveArticulo = 1 O claveArticulo = 5 Entonces
			costoManoObra = 0.80 * costoMateriaPrima
		SiNo
			costoManoObra = 0.85 * costoMateriaPrima
		FinSi
	FinSi

	Si claveArticulo = 2 O claveArticulo = 5 Entonces
		gastoFabricacion = 0.30 * costoMateriaPrima
	SiNo
		Si claveArticulo = 3 O claveArticulo = 6 Entonces
			gastoFabricacion = 0.35 * costoMateriaPrima
		SiNo
			gastoFabricacion = 0.28 * costoMateriaPrima
		FinSi
	FinSi

	costoProduccion = costoMateriaPrima + costoManoObra + gastoFabricacion
	precioVenta = costoProduccion + 0.45 * costoProduccion

Escribir "El precio de venta del artículo es: $", precioVenta
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el tipo de tarjeta y el límite de crédito actual.
//PROCESO: Calculamos el nuevo límite de crédito según las condiciones.
//SALIDA: Mostramos el nuevo límite de crédito.
Funcion calcularNuevoLimiteCredito
	Definir tipoTarjeta Como Entero
	Definir limiteActual Como Real
	
	Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
	Leer tipoTarjeta
	Escribir "Ingrese el límite de crédito actual: $"
	Leer limiteActual
	
	Si tipoTarjeta == 1 Entonces
		nuevoLimite = limiteActual * 1.25
	SiNo
		Si tipoTarjeta == 2 Entonces
			nuevoLimite = limiteActual * 1.35
		SiNo
			Si tipoTarjeta == 3 Entonces
				nuevoLimite = limiteActual * 1.40
			SiNo
				nuevoLimite = limiteActual * 1.50
			FinSi
		FinSi
	FinSi
	
	Escribir "El nuevo límite de crédito es: $", nuevoLimite
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese la zona y el peso del paquete.
//PROCESO: Calculamos el costo del servicio de paquetería según las condiciones.
//SALIDA: Mostramos el costo del servicio.
Funcion calcularCostoPaqueteria
	Definir zona Como Entero
	Definir pesoPaquete Como Real
	
	Escribir "Ingrese la zona (1, 2, 3, 4 o 5): "
	Leer zona
	Escribir "Ingrese el peso del paquete en gramos: "
	Leer pesoPaquete
	
	Segun zona Hacer
		Caso 1:
			costoPorGramo = 11.00
		Caso 2:
			costoPorGramo = 10.00
		Caso 3:
			costoPorGramo = 12.00
		Caso 4:
			costoPorGramo = 24.00
		Caso 5:
			costoPorGramo = 27.00
		De Otro Modo:
			Escribir "Zona no válida."
	Fin Segun
	
	Si pesoPaquete > 5000 Entonces
		Escribir "El paquete con peso superior a 5 kg no puede ser transportado."
	SiNo
		costoTotal = pesoPaquete * costoPorGramo / 1000  // Convertir gramos a kilogramos
		Escribir "El costo del servicio de paquetería es: $", costoTotal
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese los pesos de los alumnos hasta que ingrese 0.
//PROCESO: Clasificamos a los alumnos en los rangos de peso y calculamos el promedio de cada rango.
//SALIDA: Mostramos la cantidad de alumnos por rango y el promedio de cada rango.
Funcion calcularEstadisticaPesos
	Definir peso Como Real
	Definir cantidadMenos40kg Como Entero
	Definir cantidad40a50kg Como Entero
	Definir cantidad50a60kg Como Entero
	Definir cantidadMas60kg Como Entero
	Definir totalMenos40kg Como Real
	Definir total40a50kg Como Real
	Definir total50a60kg Como Real
	Definir totalMas60kg Como Real
	
	cantidadMenos40kg = 0
	cantidad40a50kg = 0
	cantidad50a60kg = 0
	cantidadMas60kg = 0
	totalMenos40kg = 0
	total40a50kg = 0
	total50a60kg = 0
	totalMas60kg = 0
	
	Repetir
		Escribir "Ingrese el peso del alumno (0 para finalizar): "
		Leer peso
		
		Segun
			Caso peso > 0 y peso < 40:
				cantidadMenos40kg = cantidadMenos40kg + 1
				totalMenos40kg = totalMenos40kg + peso
			Caso peso >= 40 y peso <= 50:
				cantidad40a50kg = cantidad40a50kg + 1
				total40a50kg = total40a50kg + peso
			Caso peso > 50 y peso < 60:
				cantidad50a60kg = cantidad50a60kg + 1
				total50a60kg = total50a60kg + peso
			Caso peso >= 60:
				cantidadMas60kg = cantidadMas60kg + 1
				totalMas60kg = totalMas60kg + peso
		Fin Segun
	Hasta Que peso = 0
	
	Escribir "Alumnos de menos de 40 kg: ", cantidadMenos40kg, " Promedio: ", totalMenos40kg / cantidadMenos40kg
	Escribir "Alumnos de 40 a 50 kg: ", cantidad40a50kg, " Promedio: ", total40a50kg / cantidad40a50kg
	Escribir "Alumnos de 50 a 60 kg: ", cantidad50a60kg, " Promedio: ", total50a60kg / cantidad50a60kg
	Escribir "Alumnos de más de 60 kg: ", cantidadMas60kg, " Promedio: ", totalMas60kg / cantidadMas60kg
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese tres números.
//PROCESO: Comparamos si el número 1 es el doble del número 2 y 20% menos que el número 3.
//SALIDA: Mostramos el resultado.
Funcion verificarNumeros
	Definir num1, num2, num3 Como Real
	
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2
	Escribir "Ingrese el tercer número: "
	Leer num3
	
	Si (num1 = 2 * num2) Y (num1 = num3 * 0.8) Entonces
		Escribir "El primer número es el doble del segundo y un 20% menos que el tercero."
	SiNo
		Escribir "El primer número no cumple con las condiciones."
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese un número.
//PROCESO: Asociamos el número con un día de la semana.
//SALIDA: Mostramos el día de la semana correspondiente.
Funcion mostrarDiaSemana
	Definir numeroDia Como Entero
	
	Escribir "Ingrese un número del 1 al 7: "
	Leer numeroDia
	
	Segun numeroDia Hacer
		Caso 1:
			Escribir "Lunes"
		Caso 2:
			Escribir "Martes"
		Caso 3:
			Escribir "Miércoles"
		Caso 4:
			Escribir "Jueves"
		Caso 5:
			Escribir "Viernes"
		Caso 6:
			Escribir "Sábado"
		Caso 7:
			Escribir "Domingo"
		De Otro Modo:
			Escribir "Número no válido, ingrese un número del 1 al 7."
	Fin Segun
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese un número.
//PROCESO: Asociamos el número con un mes del año.
//SALIDA: Mostramos el mes del año correspondiente.
Funcion mostrarMesAnio
	Definir numeroMes Como Entero
	
	Escribir "Ingrese un número del 1 al 12: "
	Leer numeroMes
	
	Segun numeroMes Hacer
		Caso 1:
			Escribir "Enero"
		Caso 2:
			Escribir "Febrero"
		Caso 3:
			Escribir "Marzo"
		Caso 4:
			Escribir "Abril"
		Caso 5:
			Escribir "Mayo"
		Caso 6:
			Escribir "Junio"
		Caso 7:
			Escribir "Julio"
		Caso 8:
			Escribir "Agosto"
		Caso 9:
			Escribir "Septiembre"
		Caso 10:
			Escribir "Octubre"
		Caso 11:
			Escribir "Noviembre"
		Caso 12:
			Escribir "Diciembre"
		De Otro Modo:
			Escribir "Número no válido, ingrese un número del 1 al 12."
	Fin Segun
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese las estaturas de las personas hasta que no haya más registros.
//PROCESO: Calculamos la estatura promedio.
//SALIDA: Mostramos la estatura promedio.
Funcion calcularEstaturaPromedio
	Definir estatura, sumaEstaturas Como Real
	Definir contadorPersonas Como Entero
	
	sumaEstaturas = 0
	contadorPersonas = 0
	
	Repetir
		Escribir "Ingrese la estatura de la persona (0 para finalizar): "
		Leer estatura
		
		Si estatura > 0 Entonces
			sumaEstaturas = sumaEstaturas + estatura
			contadorPersonas = contadorPersonas + 1
		FinSi
	Hasta Que estatura = 0
	
	Si contadorPersonas > 0 Entonces
		estaturaPromedio = sumaEstaturas / contadorPersonas
		Escribir "La estatura promedio del grupo es: ", estaturaPromedio
	SiNo
		Escribir "No se ingresaron estaturas válidas."
	FinSi
FinFuncion

//PROCESO: Generamos e imprimimos los números pares entre 0 y 100.
Funcion numerosPares
	Para numero = 0 Hasta 100 Con Paso 2 Hacer
		Escribir numero
	FinPara
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese 10 números.
//PROCESO: Realizamos la suma sucesiva de los números.
//SALIDA: Mostramos el resultado de la suma acumulada.
Funcion sumaSucesiva
	Definir _numero, sumaAcumulada Como Real
	
	sumaAcumulada = 0
	
	Para i = 1 Hasta 10 Hacer
		Escribir "Ingrese el número ", i, ": "
		Leer _numero
		sumaAcumulada = sumaAcumulada + _numero
	FinPara
	
	Escribir "La suma acumulada de los 10 números es: ", sumaAcumulada
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese las edades de N alumnos.
//PROCESO: Calculamos la edad promedio.
//SALIDA: Mostramos la edad promedio.
Funcion calcularEdadPromedio
	Definir n Como Entero
	Definir edad, sumaEdades Como Real
	
	sumaEdades = 0
	
	Escribir "Ingrese la cantidad de alumnos: "
	Leer n
	
	Para i = 1 Hasta n Hacer
		Escribir "Ingrese la edad del alumno ", i, ": "
		Leer edad
		
		sumaEdades = sumaEdades + edad
	FinPara
	
	Si n > 0 Entonces
		edadPromedio = sumaEdades / n
		Escribir "La edad promedio de los ", n, " alumnos es: ", edadPromedio
	SiNo
		Escribir "No se ingresaron edades válidas."
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese las horas trabajadas y el valor de la hora para cada día del mes.
//PROCESO: Calculamos el total de horas trabajadas y el sueldo.
//SALIDA: Mostramos el total de horas trabajadas y el sueldo.
Funcion calcularSueldoEmpleado
	Definir horasTrabajadas, valorHora, totalHoras, sueldoTotal Como Real
	
	totalHoras = 0
	sueldoTotal = 0
	
	Para dia = 1 Hasta 20 Hacer
		Escribir "Ingrese las horas trabajadas para el día ", dia, ": "
		Leer horasTrabajadas
		Escribir "Ingrese el valor de la hora para el día ", dia, ": "
		Leer valorHora
		
		totalHoras = totalHoras + horasTrabajadas
		sueldoTotal = sueldoTotal + (horasTrabajadas * valorHora)
	FinPara
	
	Escribir "El total de horas trabajadas en el mes es: ", totalHoras
	Escribir "El sueldo total a recibir es: ", sueldoTotal
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese las ventas del empleado durante el día.
//PROCESO: Clasificamos las ventas en tres categorías y calculamos el monto total en cada categoría y de forma global.
//SALIDA: Mostramos la cantidad de ventas y el monto total en cada categoría y el monto total global.
Funcion calcularVentasEmpleado
	Definir n Como Entero
	Definir venta, ventasMayor1000, ventasEntre500y1000, ventasMenosIgual500 Como Entero
	Definir montoMayor1000, montoEntre500y1000, montoMenosIgual500, montoTotal Como Real
	
	ventasMayor1000 = 0
	ventasEntre500y1000 = 0
	ventasMenosIgual500 = 0
	montoMayor1000 = 0
	montoEntre500y1000 = 0
	montoMenosIgual500 = 0
	montoTotal = 0
	
	Escribir "Ingrese la cantidad de ventas realizadas por el empleado: "
	Leer n
	
	Para i = 1 Hasta n Hacer
		Escribir "Ingrese el monto de la venta ", i, ": "
		Leer venta
		
		Si venta > 1000 Entonces
			ventasMayor1000 = ventasMayor1000 + 1
			montoMayor1000 = montoMayor1000 + venta
		SiNo
			Si venta > 500 Entonces
				ventasEntre500y1000 = ventasEntre500y1000 + 1
				montoEntre500y1000 = montoEntre500y1000 + venta
			SiNo
				ventasMenosIgual500 = ventasMenosIgual500 + 1
				montoMenosIgual500 = montoMenosIgual500 + venta
			FinSi
		FinSi
		
		montoTotal = montoTotal + venta
	FinPara
	
	Escribir "Ventas mayores a $1000: ", ventasMayor1000, " Monto total: $", montoMayor1000
	Escribir "Ventas entre $500 y $1000: ", ventasEntre500y1000, " Monto total: $", montoEntre500y1000
	Escribir "Ventas menores o iguales a $500: ", ventasMenosIgual500, " Monto total: $", montoMenosIgual500
	Escribir "Monto total global: $", montoTotal
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese las calificaciones de N alumnos en tres asignaturas.
//PROCESO: Calculamos el promedio de cada asignatura y el promedio general.
//SALIDA: Mostramos los promedios de cada asignatura y el promedio general.
Funcion calcularPromediosAlumnos
	Definir n Como Entero
	Definir calificacionLogica, calificacionRequerimientos, calificacionCalculos Como Real
	Definir promedioLogica, promedioRequerimientos, promedioCalculos, promedioGeneral Como Real
	
	promedioLogica = 0
	promedioRequerimientos = 0
	promedioCalculos = 0
	promedioGeneral = 0
	
	Escribir "Ingrese la cantidad de alumnos: "
	Leer n
	
	Para i = 1 Hasta n Hacer
		Escribir "Ingrese la calificación en lógica del alumno ", i, ": "
		Leer calificacionLogica
		Escribir "Ingrese la calificación en requerimientos del alumno ", i, ": "
		Leer calificacionRequerimientos
		Escribir "Ingrese la calificación en cálculos del alumno ", i, ": "
		Leer calificacionCalculos
		
		promedioLogica = promedioLogica + calificacionLogica
		promedioRequerimientos = promedioRequerimientos + calificacionRequerimientos
		promedioCalculos = promedioCalculos + calificacionCalculos
		promedioGeneral = promedioGeneral + (calificacionLogica + calificacionRequerimientos + calificacionCalculos) / 3
	FinPara
	
	promedioLogica = promedioLogica / n
	promedioRequerimientos = promedioRequerimientos / n
	promedioCalculos = promedioCalculos / n
	promedioGeneral = promedioGeneral / n
	
	Escribir "Promedio de la asignatura 'lógica_': ", promedioLogica
	Escribir "Promedio de la asignatura 'requerimientos': ", promedioRequerimientos
	Escribir "Promedio de la asignatura 'cálculos': ", promedioCalculos
	Escribir "Promedio general de todas las asignaturas: ", promedioGeneral
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese sueldos y categorías de profesores hasta que ingrese una categoría inexistente.
//PROCESO: Calculamos el promedio de sueldos y el bono de cada categoría.
//SALIDA: Mostramos el promedio de sueldos y el bono de cada categoría.
Funcion calcularSueldosProfesores
	Definir sueldo, bono, totalSueldos Como Real
	Definir categoria Como Cadena
	
	totalSueldos = 0
	contadorProfesores = 0
	totalBonoAuxiliar = 0
	totalBonoAgregado = 0
	totalBonoPrincipal = 0
	
	Repetir
		Escribir "Ingrese el sueldo del profesor (ingrese 0 para terminar): "
		Leer sueldo
		
		Si sueldo <> 0 Entonces
			Escribir "Ingrese la categoría del profesor (Auxiliar, Agregado, Principal): "
			Leer categoria
			
			contadorProfesores = contadorProfesores + 1
			totalSueldos = totalSueldos + sueldo
			
			Segun categoria Hacer
				Caso "Auxiliar":
					bono = sueldo * 0.10
					totalBonoAuxiliar = totalBonoAuxiliar + bono
				Caso "Agregado":
					bono = sueldo * 0.20
					totalBonoAgregado = totalBonoAgregado + bono
				Caso "Principal":
					bono = sueldo * 0.50
					
					totalBonoPrincipal = totalBonoPrincipal + bono
			FinSegun		
		FinSi
	Hasta Que sueldo == 0
	
	Si contadorProfesores > 0 Entonces
		promedioSueldos = totalSueldos / contadorProfesores
		
		Escribir "Promedio de sueldos: ", promedioSueldos
		Escribir "Bono para la categoría Auxiliar: ", totalBonoAuxiliar
		Escribir "Bono para la categoría Agregado: ", totalBonoAgregado
		Escribir "Bono para la categoría Principal: ", totalBonoPrincipal
	SiNo
		Escribir "No se ingresaron sueldos válidos."
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese el recorrido de n viajes y el precio de cada pasaje.
//PROCESO: Calculamos el precio de cada pasaje según el recorrido y clasificamos en dos categorías: hasta 100 km o más de 100 km.
//SALIDA: Mostramos el promedio de los precios y la cantidad de pasajes en cada categoría.
Funcion calcularPrecioPasajes
	Definir recorrido, precioPasaje Como Real
	Definir pasajesHasta100Km, pasajesMasDe100Km Como Entero
	Definir totalPreciosPasajes Como Real
	
	totalPreciosPasajes = 0
	pasajesHasta100Km = 0
	pasajesMasDe100Km = 0
	
	Repetir
		Escribir "Ingrese el recorrido del viaje en kilómetros (0 para terminar): "
		Leer recorrido
		Si recorrido <> 0 Entonces
			Escribir "Ingrese el precio del pasaje: "
			Leer precioPasaje
			
			totalPreciosPasajes = totalPreciosPasajes + precioPasaje
			
			Si recorrido <= 100 Entonces
				pasajesHasta100Km = pasajesHasta100Km + 1
			SiNo
				pasajesMasDe100Km = pasajesMasDe100Km + 1
				precioPasaje = precioPasaje * 1.20
			FinSi			
		FinSi
	Hasta Que recorrido == 0
	
	Si pasajesHasta100Km + pasajesMasDe100Km > 0 Entonces
		promedioPreciosPasajes = totalPreciosPasajes / (pasajesHasta100Km + pasajesMasDe100Km)
		
		Escribir "Promedio de precios de pasajes: ", promedioPreciosPasajes
		Escribir "Cantidad de pasajes hasta 100 km: ", pasajesHasta100Km
		Escribir "Cantidad de pasajes más de 100 km: ", pasajesMasDe100Km
	SiNo
		Escribir "No se ingresaron pasajes válidos."
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese una serie de números distintos de cero hasta que ingrese un valor cero.
//PROCESO: Contamos la cantidad de valores distintos de cero y calculamos el promedio.
//SALIDA: Mostramos la cantidad y el promedio de los valores distintos de cero.
Funcion contarValoresDistintosDeCero
	Definir _numero, cantidadValores Como Entero
	Definir totalValores Como Real
	
	cantidadValores = 0
	totalValores = 0
	
	Repetir
		Escribir "Ingrese un número (0 para terminar): "
		Leer _numero
		
		Si _numero <> 0 Entonces
			cantidadValores = cantidadValores + 1
			totalValores = totalValores + _numero
		FinSi
	Hasta Que _numero == 0
	
	Si cantidadValores > 0 Entonces
		promedioValores = totalValores / cantidadValores
		
		Escribir "Cantidad de valores distintos de cero: ", cantidadValores
		Escribir "Promedio de los valores distintos de cero: ", promedioValores
	SiNo
		Escribir "No se ingresaron valores distintos de cero."
	FinSi
FinFuncion

//ENTRADA: Pedimos al usuario que ingrese una serie de números positivos hasta que ingrese un valor negativo.
//PROCESO: Contamos la cantidad de números positivos múltiplos de 3 y calculamos el total.
//SALIDA: Mostramos la cantidad y el total de números positivos múltiplos de 3.
Funcion contarNumerosPositivosMultiplosDe3
	Definir _numero, cantidadNumeros, totalNumeros Como Entero
	
	cantidadNumeros = 0
	totalNumeros = 0
	
	Repetir
		Escribir "Ingrese un número positivo (negativo para terminar): "
		Leer _numero
		
		Si _numero > 0 Entonces
			Si _numero % 3 == 0 Entonces
				cantidadNumeros = cantidadNumeros + 1
				totalNumeros = totalNumeros + _numero
			FinSi
		FinSi
	Hasta Que _numero < 0
	
	Si cantidadNumeros > 0 Entonces
		Escribir "Cantidad de números positivos múltiplos de 3: ", cantidadNumeros
		Escribir "Total de números positivos múltiplos de 3: ", totalNumeros
	SiNo
		Escribir "No se ingresaron números positivos múltiplos de 3."
	FinSi
FinFuncion

Algoritmo Principal
	//verificarCaracter
	//verificarCaracter2
	//obtenerValorASCII
	//compararNombres
	//compararNumeros
	//encontrarMayor
	//determinarSignoNumero
	//calcularCostoLapices
	//calcularPrecioTraje
	//calcularPresupuestoBanquete
	
	//calcularGananciaUva
	//calcularCostoViaje
	//calcularCostoViaje2
	//calcularCostoColas
	//calcularCostoProductos
	//calcularCostoConsulta
	//calcularPrecioVenta
	//calcularNuevoLimiteCredito
	//calcularCostoPaqueteria
	//calcularEstadisticaPesos
	
	//verificarNumeros
	//mostrarDiaSemana
	//mostrarMesAnio
	//calcularEstaturaPromedio
	//numerosPares
	//sumaSucesiva
	//calcularEdadPromedio
	//calcularSueldoEmpleado
	//calcularVentasEmpleado
	//calcularPromediosAlumnos
	//calcularSueldosProfesores
	//calcularPrecioPasajes
	//contarValoresDistintosDeCero
	//contarNumerosPositivosMultiplosDe3
FinAlgoritmo

