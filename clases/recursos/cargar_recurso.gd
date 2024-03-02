extends Node

func _ready():
	var recurso_personalizado:Persona = preload("res://clases/recursos/new_resource.tres") #cargar recurso personalizado que hereda de la clase Persona
	print(recurso_personalizado.nombre) #accediendo a el (lectura)
	
	var recurso_guardar = Persona.new()
	ResourceSaver.save(recurso_guardar, "user://data.tres") #tambien se pueden guardar como archivo (se pueden modificar)

