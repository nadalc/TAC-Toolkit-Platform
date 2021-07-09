extends Node

class_name Step

var cards : Array
var visibleCards : Array

var stepInformation : String

func _init(p_stepInformation : String = "") -> void:
	self.cards = []
	self.visibleCards = []
	self.stepInformation = p_stepInformation

# =-= Method =-=
func addCard(card : Card) -> void:
	if card == null:
		return
	
	cards.append(card)
	visibleCards.append(card)
	
func hideCard(card: Card) -> void:
	if card == null or not(cards.has(card)) or not(visibleCards.has(card)):
		return
	
	visibleCards.erase(card)


func showCard(card: Card) -> void:
	if card == null or not(cards.has(card)) or visibleCards.has(card):
		return
	visibleCards.append(card)

func getCard(index : int) -> Card:
	if index > self.cards.size() -1 or index < 0:
		return null
	return self.cards[index]

func getCards() -> Array :
	return self.cards

func getStepInformation() -> String :
	return self.stepInformation
