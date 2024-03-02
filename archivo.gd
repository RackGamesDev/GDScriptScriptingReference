extends Node

const RUTA = "data.json"

func guardar(data): #guardar una variable (preferiblemente una tupla) como json
	var file := FileAccess.open(RUTA, FileAccess.WRITE)
	file.store_line(JSON.stringify(data))
	file.close()
	
func cargar(): #devuelve una tupla a partir de un json
	if not FileAccess.file_exists(RUTA):
		return
	var file := FileAccess.open(RUTA, FileAccess.READ)
	var final = ""
	while not file.eof_reached():
		var line = file.get_line()
		if not line == "":
			final += line
	file.close()
	var data = JSON.parse_string(final)
	return data
	
func cargar_texto(): #carga el texto de cualquier archivo de texto
	if not FileAccess.file_exists(RUTA):
		return
	var file := FileAccess.open(RUTA, FileAccess.READ)
	var final = ""
	while not file.eof_reached():
		var line = file.get_line()
		if not line == "":
			final += line
	file.close()
	return final
