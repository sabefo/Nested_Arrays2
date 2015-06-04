#METODO QUE CREA UN TABLERO DE GATO Y LO LLENA DE FORMA
#AE
def gato(x, o)
	tablero = []
	i = 0
	if x > o
		until i == 9
			n = Random.rand(9)
			if tablero[n] == nil
				m = i % 2
				if i % 2 == 0
					tablero[n] = "X"
					i += 1
				else
					tablero[n] = "O"
					i += 1
				end
			else
				n = Random.rand(9)
			end
		end
	else
		until i == 9
			n = Random.rand(9)
			if tablero[n] == nil
				m = i % 2
				if i % 2 == 0
					tablero[n] = "O"
					i += 1
				else
					tablero[n] = "X"
					i += 1
				end
			else
				n = Random.rand(9)
			end
		end
	end
	tablero_bueno = tablero.join(",")
	for i in 0...9
		tablero_bueno = tablero_bueno.sub(",","")
	end
	tablero = []
	palabra = ""
	for i in 0...3
		palabra = tablero_bueno.slice(0,3)
		tablero_bueno = tablero_bueno.sub(palabra,"")
		tablero << palabra.split
	end
	tablero
end
puts gato(5,4)
