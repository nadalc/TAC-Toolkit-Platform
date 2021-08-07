extends Node2D

var state : String = "1-8"

signal p_unfoldButton()

func _ready():
	display()

func setState(p_state : String) :
	state = p_state
	display()

func display() :

	match state :
		"1-8":
			$Sprite.texture = preload("res://asset/TAC cards_1/button/button_1-8.png")
		"9-16":
			$Sprite.texture = preload("res://asset/TAC cards_1/button/button_9-16.png")

func displaySelected() :
	print("display selected")
	match state :
		"1-8":
			$Sprite.texture = preload("res://asset/TAC cards_1/button/button_1-8_selected.png")
		"9-16":
			$Sprite.texture = preload("res://asset/TAC cards_1/button/button_9-16_selected.png")


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick"):
			emit_signal("p_unfoldButton")


func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	displaySelected()


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	display()
