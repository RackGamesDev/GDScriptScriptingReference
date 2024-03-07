extends Node


func get_axis() -> Vector2: #movimiento segun teclas (esto en _process)
	var axis:Vector2
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	axis.y = int(Input.is_action_pressed("ui_up")) - int(Input.is_action_pressed("ui_down"))
	# move_and_slice()
	return axis.normalized() # * velocidad

func random(menos:int, mas:int) -> int: #generar numero aleatorio
	randomize()
	var rng = RandomNumberGenerator.new()
	var num = rng.randi_range(menos, mas)
	return num

func find_node_by_name(root, name):
	if(root.get_name() == name): return root
	for child in root.get_children():
		if(child.get_name() == name):
			return child
		var found = find_node_by_name(child, name)
		if(found): return found
	return null
