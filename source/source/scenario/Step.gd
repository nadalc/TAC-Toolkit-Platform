extends Node

class_name Step

var cards : Dictionary
var visibleCards : Array

var stepInformation : String

var deck : Deck

func _init(p_stepInformation : String = "") -> void:
	self.cards = {}
	self.visibleCards = []
	self.stepInformation = p_stepInformation
	self.deck = HelloCards.new()

# =-= Method =-=
func addCard(cardType : String) -> void:
	if not cards.has(cardType):
		var card : Card = deck.getCard(cardType)
		if not(card == null):
			cards[cardType] = card
	
	visibleCards.append(cards.get(cardType))
	
func hideCard(card: Card) -> void:
	if card == null or not(card in cards.values()) or not(visibleCards.has(card)):
		return
	
	visibleCards.erase(card)

func showCard(card: Card) -> void:
	if card == null or not(card in cards.values()) or visibleCards.has(card):
		return
	visibleCards.append(card)

func getCard(cardType : String) -> Card:
	if not cards.has(cardType):
		return null
	return cards.get(cardType)

func getCards() -> Dictionary :
	return self.cards

func getStepInformation() -> String :
	return self.stepInformation
