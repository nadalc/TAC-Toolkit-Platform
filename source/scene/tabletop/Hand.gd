extends Node2D

func _ready():
	var texture : Texture = preload("res://asset/deck_1.png")
	
	var x : float = 0 
	var y : float = 520
	
	for i in range(8):
		var deck = preload("res://scene/tabletop/Deck.tscn").instance()
		deck.id = i
		deck.get_node("Sprite").texture = texture
		deck.position = Vector2(x, y)
		
		add_child(deck)
		
		x += 135
