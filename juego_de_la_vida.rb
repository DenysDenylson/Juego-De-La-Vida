

def mostrar
	for i in 0...@fila do
		for j in 0...@columna do
			print @tablero[i][j]
		end
		puts
	end
end

def celulas_alrededor(fila, columna)
	contador = 0
	if limites_exedidos?(fila-1, columna-1) == false && @tablero[fila-1][columna-1] == 1 
		contador = contador + 1
	end
	if limites_exedidos?(fila-1, columna) == false && @tablero[fila-1][columna] == 1
		contador = contador + 1
	end
	if limites_exedidos?(fila-1, columna+1) == false && @tablero[fila-1][columna+1] == 1
		contador = contador + 1
	end
	if limites_exedidos?(fila, columna-1) == false && @tablero[fila][columna-1] == 1
		contador = contador + 1
	end
	if limites_exedidos?(fila, columna+1) == false && @tablero[fila][columna+1] == 1
		contador = contador + 1
	end
	if limites_exedidos?(fila+1, columna-1) == false && @tablero[fila+1][columna-1] == 1
		contador = contador + 1
	end
	if limites_exedidos?(fila+1, columna) == false && @tablero[fila+1][columna] == 1
		contador = contador + 1
	end
	if limites_exedidos?(fila+1, columna+1) == false && @tablero[fila+1][columna+1] == 1
		contador = contador + 1
	end

	return contador
	
end

def limites_exedidos?(fila, columna)
	if fila >= @fila || columna >= @columna || fila < 0 || columna < 0
		return true
	end
	return false
end

def jugar
	for i in 0...@fila do
		for j in 0...@columna do
			if celulas_alrededor(i, j) < 2 || celulas_alrededor(i, j) > 3
				@tablero[i][j] = 0
			else
				@tablero[i][j] = 1
			end

		end
	end
end

def main
	@fila, @columna = 10,10

	# Inicializando en tablero
	@tablero = Array.new(@fila)
	for i in 0...@fila do
		@tablero[i] = Array.new(@columna){0}
	end

	#Dando valores para probar  
	@tablero[0][1]=1
	@tablero[1][1]=1

	while true
		system "cls"
		mostrar	
		jugar
		sleep(1)
	end

end

main()
# ivan.velasquez.rios@gmail.com