extends Area2D

export var scrollDirection : int

signal ent_scrollButton(node)
signal ext_scrollButton(node)
signal p_scrollButton(node)
signal r_scrollButton(node)

func _ready():
	$color.modulate = Color.dimgray
	$double_arrow.modulate = Color.dimgray
	$double_arrow.modulate.v -= 0.10
	$simple_arrow.modulate = Color.dimgray
	$simple_arrow.modulate.v -= 0.10
	

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick"):
			$color.modulate.v -= 0.10 
			$double_arrow.modulate.v -= 0.10
			emit_signal("p_scrollButton", self)
		if event.is_action_released("ui_leftclick"):
			$color.modulate.v += 0.10 
			$double_arrow.modulate.v += 0.10
			emit_signal("r_scrollButton", self)


func _on_Area2D_mouse_entered():
	$simple_arrow.visible = false
	$double_arrow.visible = true
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	emit_signal("ent_scrollButton", self)


func _on_Area2D_mouse_exited():
	$double_arrow.visible = false
	$simple_arrow.visible = true
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	emit_signal("ext_scrollButton", self)
