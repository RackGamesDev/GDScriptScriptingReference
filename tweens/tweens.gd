extends Node2D
#los tweens son animaciones por codigo, similar al turtle de python
func _ready():
	funciones_tween()
	#anim_tween()

func anim_tween():
	var tween:Tween = get_tree().create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT) #se crea el tween con las transiciones de entrada y salida
	tween.tween_property($Sprite2D, "modulate", Color.RED, 1) #un paso de la transicion, se especifica el nodo, la propiedad, el valor y lo que tarda en segundos
	tween.tween_property($Sprite2D, "modulate", Color.BLUE, 1) #otro paso de la transicion que se ejecutara cuando el anterior termine
	tween.tween_property($Sprite2D, "position", Vector2(14,30), 2)
	tween.tween_callback($Sprite2D.queue_free) #tambien sirve para ejecutar funciones

func funciones_tween():
	var tween:Tween = get_tree().create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	tween.tween_method(funcion_interpolada, 0, 10, 1).set_delay(2) #hace una transicion de un valor de 0 a 10 en 1 segundo, una vez pasados 2 segundos
	
func funcion_interpolada(valor:int)->void:
	$Control/Label.text = str(valor)
