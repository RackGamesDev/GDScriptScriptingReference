extends Node

func _ready():
	var una_persona = Persona.new() #Habiendo creado el script de la clase se puede usar como variable
	print(una_persona.nombre) #Accediendo a sus propiedades y metodos
	print(una_persona.tamagno)
	una_persona.funcion(3)
