extends "res://addons/gut/test.gd"

var deck : Deck

#getCard(cardType)
func test_getCard() -> void:
	deck = HelloCards.new()
	
	var result = deck.getCard("Hello World!")
	assert_eq(result.getCardInformation(), "Hello World!", "result and card should be the same")

func test_getCard_multipleTime() -> void:
	deck = HelloCards.new()
	
	var result1 = deck.getCard("Hello World!")
	var result2 = deck.getCard("Hello World!")
	assert_ne(result1, result2, "getCard should give a new card")
