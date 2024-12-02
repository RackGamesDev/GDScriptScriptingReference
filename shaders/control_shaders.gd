extends Sprite2D

func _ready():
	material.set_shader_parameter("reemplazo", Color.RED) #Si un shader tiene parametros se pueden configurar desde el material
	print(material.get_shader_parameter("tolerancia"))
	RenderingServer.global_shader_parameter_set("shaderglobal", 30) #Interactuando con los parametros globales de shaders

