extends Area2D


var state = 1

func _process(delta):
	if state == 1 :
		pass
	if state == 2 :
		pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick") and state == 1 :
			state = 2
		if event.is_action_released("ui_leftclick") and state == 2 :
			state = 1
