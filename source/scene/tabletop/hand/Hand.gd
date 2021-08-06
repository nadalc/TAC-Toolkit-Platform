extends Node2D

signal p_deck(deck)
signal ent_deck(deck)
signal ext_deck()

signal p_unfoldButton()

var min_id : int
var max_id : int

var unfoldButton

var decks : Array = []

func _ready():
	min_id = 0
	max_id = 8
	addUnfoldButton()
	display()
	
func display() -> void:
	
	Input.set_default_cursor_shape(Input.CURSOR_BUSY)
	
	for deck in decks :
		remove_child(deck)
		decks = []
		
	var texture : TacDrawCard = TacDrawCard.new()
	
	var x : float = 0 
	var y : float = 520
	
	for i in range(min_id, max_id):
		var deck = preload("res://scene/tabletop/hand/Deck.tscn").instance()
		deck.id = i
		deck.get_node("Sprite").texture = texture.getDeck(i)
		deck.position = Vector2(x, y)
		
		deck.connect("p_deck", self, "p_deck")
		deck.connect("ent_deck", self, "ent_deck")
		deck.connect("ext_deck", self, "ext_deck")
		
		decks.append(deck)
		add_child(deck)
		
		x += 135
	
	
	unfoldButton.position = Vector2(x, y)

	if min_id == 0 and max_id == 8 :
		$"Card_9-16".visible = false
		$"Card_1-8".visible = true
		unfoldButton.setState("9-16")
	elif min_id == 8 and max_id == 16 :
		$"Card_1-8".visible = false
		$"Card_9-16".visible = true
		unfoldButton.setState("1-8")

	Input.set_default_cursor_shape(Input.CURSOR_ARROW)

func unfold():
	if min_id == 0 and max_id == 8 :
		min_id = 8
		max_id = 16
	elif min_id == 8 and max_id == 16 :
		min_id = 0
		max_id = 8
	display()
	
func addUnfoldButton():
	unfoldButton = preload("res://scene/tabletop/hand/UnfoldButton.tscn").instance()
	unfoldButton.connect("p_unfoldButton", self, "p_unfoldButton")
	add_child(unfoldButton)

func p_deck(deck) -> void:
	emit_signal("p_deck", deck)

func ent_deck(deck) -> void:
	emit_signal("ent_deck", deck)

func ext_deck(deck) -> void :
	emit_signal("ext_deck", deck)

func p_unfoldButton() -> void:
	emit_signal("p_unfoldButton")
