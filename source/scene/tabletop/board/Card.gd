extends Node2D

signal p_card(card)
export var cardId : int
var id

func displayCard(cards : Array):
	match cards.size():
		0 : 
			$".".set_visible(false)
		1 :
			$Sprite.texture = TacDrawCard.new().getDeck(cards[0])



func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick"):
			emit_signal("p_card", self)


func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
