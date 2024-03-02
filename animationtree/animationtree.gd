extends Node2D

@onready var playback:AnimationNodeStateMachinePlayback = $Sprite2D/AnimationTree.get("parameters/playback")

func _ready():
	#$Sprite2D/AnimationPlayer.play("horizontal")
	#$Sprite2D/AnimationPlayer.stop()
	playback.travel("horizontal")

func _process(delta):
	state_machine()
	if(Input.is_action_just_pressed("ui_right")):
		print("a")
		playback.travel("horizontal")
	if(Input.is_action_just_pressed("ui_left")):
		print("b")
		playback.travel("vertical")

func state_machine()->void:
	match playback.get_current_node():
		"horizontal":
			pass
			#print("animacion horizontal")
		"vertical":
			pass
			#print("animacion vertical")
