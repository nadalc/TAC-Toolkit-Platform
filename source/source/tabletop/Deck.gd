extends Node2D

export var id : int

signal p_deck(deck)
signal ent_deck(deck)
signal ext_deck(deck)

func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	emit_signal("ent_deck", self)


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	emit_signal("ext_deck", self)


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick"):
			emit_signal("p_deck", self)
