extends Node2D

export var id : int

func _on_Area2D_mouse_entered():
	pass


func _on_Area2D_mouse_exited():
	pass # Replace with function body.


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick"):
			print("oui", id)
