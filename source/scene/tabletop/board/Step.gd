extends Node2D

var id
var cards : Array = []

signal ent_target(step)
signal ext_target(step)

signal p_card(card)

func _ready():
	$Title/Sprite.modulate = Color.darkgray
	$Title/Label.modulate = Color.darkgray
	$Title/Sprite.modulate.v += 0.05
	$Title/Label.modulate.v -= 0.30


func setTitle(text : String) -> void:
	$Title/Label.text = text 


func _on_Area2D_mouse_entered():
	emit_signal("ent_target", self)


func _on_Area2D_mouse_exited():
	emit_signal("ext_target", self)

func addCard(id):
	if id in cards :
		cards.erase(id)
	cards.push_front(id)
	if cards.size() > 1 :
		$Card.set_visible(false)
		$Cards.set_visible(true)
		$Cards.displayCards(cards)
	else :
		$Cards.set_visible(false)
		$Card.set_visible(true)
		$Card.displayCard(cards)

func removeCard(id):
	if id in cards:
		cards.erase(id)
	if cards.size() > 1 :
		$Card.set_visible(false)
		$Cards.set_visible(true)
		$Cards.displayCards(cards)
	else :
		$Cards.set_visible(false)
		$Card.set_visible(true)
		$Card.displayCard(cards)


func _on_Card_p_card(card):
	card.id = cards[card.cardId]
	emit_signal("p_card", card)
