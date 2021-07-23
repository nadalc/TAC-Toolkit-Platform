extends Node2D

var state

func _ready():
	state = "init"

func _process(delta):
	if state == "init":
		pass
	elif state == "scroll":
		$"./board".position.x -= 2
	elif state == "scroll+":
		$"./board".position.x -= 10

func _on_Area2D_mouse_entered():
	state = "scroll"


func _on_Area2D_mouse_exited():
	state = "init"



func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick") :
			state = "scroll+"
		elif event.is_action_released("ui_leftclick") :
			state = "scroll"
