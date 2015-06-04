#CODIGO QUE NOS REGRESA UN ARREGLO DE ARREGLOS, ES UNA TABLA
	tabla = []
	titulos = ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
	fila_1 = ["Rodrigo Garcia", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]]
	fila_2 = ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]]
	fila_3 = ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]]
	fila_4 = ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]]
	fila_5 = ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]
	tabla << titulos
	tabla << fila_1
	tabla << fila_2
	tabla << fila_3
	tabla << fila_4
	tabla << fila_5
	tabla

#CODIGO QUE NOS GENERA UN HASH CON LA TABLA DE ARRIBA
arreglo_hashes = []
for j in 1...tabla.length
	fila_11 = {}
	for i in 0...titulos.length
		fila_11[tabla[0][i]] = tabla[j][i]
	end
	arreglo_hashes << fila_11
	p arreglo_hashes
end