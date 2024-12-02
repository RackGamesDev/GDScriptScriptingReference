extends Node

func _ready(): #Al cargar el nodo
	get_tree().root.get_node("/root/Node2D/objeto").externa = 3 #una forma de hacer referencia a los nodos con ruta absoluta
	$/root/Node2D/objeto.externa = 3 #Otra forma de recibir nodos con ruta absoluta
	print($sub/subsub.name) #Otra forma pero con ruta relativa
	print(get_node("../objeto").name) #Ruta relativa con get_node, funciona similar a una ruta de carpetas
	print(get_parent()) #Devuelve el nodo padre
	print(get_child(0)) #Devuelve el x nodo hijo
	print(get_children()) #Devuelve los nodos hijos como array
	print(self) #Devuelve este nodo
	$Sprite2D.set_meta("datos", $Sprite2D.get_meta("datos") + 1) #Cambiar los metadatos de un nodo
	$Sprite2D.texture = preload("res://icon.svg") #Para que se cargue al principio se usa preload(), util para @onready
	$Sprite2D.texture = load("res://icon.svg") #Para hacer referencia a un archivo se usa load()
	print(SCRIPTAUTOLOAD.VARGLOBAL) #Accediendo a una propiedad de un nodo/script cargado como singleton/autoload desde project settings
	
	#get_tree().change_scene_to_file("res://animationtree/animationtree.tscn")# Cambiar de una escena a otra
	get_tree().paused = false #Puede pausar el juego o no (algunas cosas siguen funcionando dependiendo de la configuracion de process)
	#get_tree().quit() #Cerrar el juego
	
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("musica"), 30) #Cambia el volumen de un bus de audio
	var num = randi() % 5 + 1 #Generar numero aleatorio de 0 a 5
	get_child(0).add_to_group("cosas2") #Agnadir un nodo a un grupo
	get_child(0).remove_from_group("cosas2") #Quitar de un grupo
	print(get_child(0).is_in_group("cosas2")) #Saber si esta en un grupo
	print(get_child(0).get_groups()) #array con los grupos
	get_child(0).add_child(preload("res://escenaSingleton.tscn").instantiate()) #Agregar subescena a un nodo
	get_child(0).add_child(Sprite2D.new()) #Agregar nodo a partir de su clase dentro de otro nodo
	get_child(0).visible = true #Si se renderiza o no
	get_child(0).visible = true #Si se renderiza o no
	get_child(0).queue_free() #Elimina un nodo

func _process(delta): #Intenta hacerlo 60 veces por segundo
	print(Input.is_action_just_pressed("ui_accept"))#Cuando una accion se presione
	print(Input.is_action_just_released("ui_accept"))#Cuando una accion se deje de presionar
	print(Input.is_action_pressed("ui_accept"))#Mientras una accion este presionada
	print(delta)

func _physics_process(delta): #Igual que _process() pero siempre es a 60 veces por segundo
	pass
	
func _input(event): #Por cada evento de input del sistema, event declara que tipo de evento fue
	if event is InputEventMouseMotion:
		print(event.position) #Posicion x y del mouse
	#print(event)
	
func _notification(what): #por cada evento de la ventana del sistema operativo
	if what == NOTIFICATION_WM_CLOSE_REQUEST: #Al intentar cerrarlo
		pass

func _on_objeto_hidden(): #Cuando x nodo haga algo, se provocara esta funcion, esto es una segnal y se hace desde la pestagna Node (segnales por defecto)
	pass
signal llamar(valor) #Crear una segnal personalizada
func emitir_segnal():
	emit_signal("llamar", 30) #Emitir la signal personalizada con parametros, los otros nodos se tendrian que suscribir a esta
	llamar.emit() #Otra manera de emitir la segnal personalizada
	#Para conectar la segnal tambien desde script seria: (nodo).(segnal).connect((funcion dentro del script))
