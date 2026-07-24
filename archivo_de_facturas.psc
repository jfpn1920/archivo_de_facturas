Algoritmo archivo_de_facturas
	Definir opcion, totalFacturas Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir numeroFactura Como Caracter
	Definir cliente Como Caracter
	Definir fecha Como Caracter
	Definir valorFactura Como Real
	Definir metodoPago Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension numeroFactura[100]
	Dimension cliente[100]
	Dimension fecha[100]
	Dimension valorFactura[100]
	Dimension metodoPago[100]
	Dimension estado[100]
	totalFacturas <- 0
	siguienteID <- 1
	//----------------------------------------//
	//--|menu_principal_archivo_de_facturas|--//
	//----------------------------------------//
	Repetir
		Escribir "menu principal archivo de facturas"
		Escribir "1) registrar factura"
		Escribir "2) editar factura"
		Escribir "3) eliminar factura"
		Escribir "4) buscar factura"
		Escribir "5) listar facturas"
		Escribir "6) ver detalles de la factura"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_factura|--//
			//-----------------------//
			1:
				Escribir "registrar factura"
				id[totalFacturas + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalFacturas + 1]
				Escribir "ingrese el numero de la factura:"
				Leer numeroFactura[totalFacturas + 1]
				Escribir "ingrese el nombre del cliente:"
				Leer cliente[totalFacturas + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalFacturas + 1]
				Escribir "ingrese el valor de la factura:"
				Leer valorFactura[totalFacturas + 1]
				Escribir "ingrese el metodo de pago:"
				Leer metodoPago[totalFacturas + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalFacturas + 1]
				totalFacturas <- totalFacturas + 1
				Escribir "factura registrada correctamente."
			//--------------------//
			//--|editar_factura|--//
			//--------------------//
			2:
				Escribir "editar factura"
				Si totalFacturas = 0 Entonces
					Escribir "no hay facturas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalFacturas Hacer
						Escribir id[i], " | ", numeroFactura[i], " | ", cliente[i], " | ", fecha[i], " | ", valorFactura[i], " | ", metodoPago[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la factura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFacturas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo numero de factura:"
							Leer numeroFactura[i]
							Escribir "ingrese el nuevo cliente:"
							Leer cliente[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo valor de la factura:"
							Leer valorFactura[i]
							Escribir "ingrese el nuevo metodo de pago:"
							Leer metodoPago[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "factura editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una factura con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_factura|--//
			//----------------------//
			3:
				Escribir "eliminar factura"
				Si totalFacturas = 0 Entonces
					Escribir "no hay facturas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalFacturas Hacer
						Escribir id[i], " | ", numeroFactura[i], " | ", cliente[i], " | ", fecha[i], " | ", valorFactura[i], " | ", metodoPago[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la factura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFacturas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalFacturas Entonces
								Para j <- i Hasta totalFacturas - 1 Hacer
									id[j] <- id[j+1]
									numeroFactura[j] <- numeroFactura[j+1]
									cliente[j] <- cliente[j+1]
									fecha[j] <- fecha[j+1]
									valorFactura[j] <- valorFactura[j+1]
									metodoPago[j] <- metodoPago[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalFacturas <- totalFacturas - 1
							Escribir "factura eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una factura con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_factura|--//
			//--------------------//
			4:
				Escribir "buscar factura"
				Si totalFacturas = 0 Entonces
					Escribir "no hay facturas registradas."
				SiNo
					Escribir "ingrese el id de la factura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFacturas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", numeroFactura[i], " | ", cliente[i], " | ", fecha[i], " | ", valorFactura[i], " | ", metodoPago[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una factura con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_facturas|--//
			//---------------------//
			5:
				Escribir "listar facturas"
				Si totalFacturas = 0 Entonces
					Escribir "no hay facturas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalFacturas Hacer
						Escribir id[i], " | ", numeroFactura[i], " | ", cliente[i], " | ", fecha[i], " | ", valorFactura[i], " | ", metodoPago[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_factura|--//
			//--------------------------//
			6:
				Escribir "ver detalles de la factura"
				Si totalFacturas = 0 Entonces
					Escribir "no hay facturas registradas."
				SiNo
					Escribir "ingrese el id de la factura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFacturas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la factura"
							Escribir "id: ", id[i]
							Escribir "numero de factura: ", numeroFactura[i]
							Escribir "cliente: ", cliente[i]
							Escribir "fecha: ", fecha[i]
							Escribir "valor de la factura: ", valorFactura[i]
							Escribir "metodo de pago: ", metodoPago[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una factura con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalFacturas = 0 Entonces
					Escribir "no hay facturas registradas."
				SiNo
					totalPagadas <- 0
					totalPendientes <- 0
					sumaFacturas <- 0
					mayorFactura <- valorFactura[1]
					menorFactura <- valorFactura[1]
					Para i <- 1 Hasta totalFacturas Hacer
						sumaFacturas <- sumaFacturas + valorFactura[i]
						Si estado[i] = "pagada" Entonces
							totalPagadas <- totalPagadas + 1
						SiNo
							totalPendientes <- totalPendientes + 1
						FinSi
						Si valorFactura[i] > mayorFactura Entonces
							mayorFactura <- valorFactura[i]
						FinSi
						Si valorFactura[i] < menorFactura Entonces
							menorFactura <- valorFactura[i]
						FinSi
					FinPara
					promedioFacturas <- sumaFacturas / totalFacturas
					Escribir "estadistica general"
					Escribir "total de facturas: ", totalFacturas
					Escribir "facturas pagadas: ", totalPagadas
					Escribir "facturas pendientes: ", totalPendientes
					Escribir "valor total facturado: ", sumaFacturas
					Escribir "promedio de facturas: ", promedioFacturas
					Escribir "factura de mayor valor: ", mayorFactura
					Escribir "factura de menor valor: ", menorFactura
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar archivo de facturas."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo