extends "res://addons/gut/test.gd"

#addCard(card)

func test_addCard_cards() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	
	assert_eq(step.cards[0], card, "card should be present in cards")

func test_addCard_visibleCard() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	
	assert_eq(step.visibleCards[0], card, "card should be present in visibleCard")

func test_addCard_null() -> void:
	var step : Step = Step.new()
	var card = null
	
	step.addCard(card)
	
	assert_eq(step.cards.size(), 0, "card is not valid (null), the size of cards should not increase")

#hideCard(card)

func test_hideCard_cards() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	
	assert_eq(step.cards[0], card, "card should be in cards even if it is hide")

func test_hideCard_visibleCard() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	
	assert_eq(step.visibleCards.size(), 0, "visibleCard should be empty")

func test_hideCard_null() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(null)
	
	assert_eq(step.visibleCards[0], card, "card is not valid (null), visibleCard should not be empty")

func test_hideCard_allReadyHide() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	step.hideCard(card)
	
	assert_eq(step.visibleCards.size(), 0, "visibleCards should not decrease if card is not present on it (non valid)")

#showCard(card)

func test_showCard_cards() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	step.showCard(card)
	
	assert_eq(step.cards[0], card, "card should be in cards")

func test_showCard_visibleCard() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	step.showCard(card)
	
	assert_eq(step.visibleCards[0], card, "card should be in visibleCards")

func test_showCard_invalidCard() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.showCard(card)
	
	assert_eq(step.visibleCards.size(), 0, "visibleCards should be empty")

func test_showCard_null() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	step.showCard(null)
	
	assert_eq(step.visibleCards.size(), 0, "visibleCards should be empty")

func test_showCard_allReadyShow() -> void:
	var step : Step = Step.new()
	var card : Card = Card.new()
	
	step.addCard(card)
	step.hideCard(card)
	step.showCard(card)
	step.showCard(card)
	
	assert_eq(step.visibleCards.size(), 1, "visibleCards should not increase")

#getCard(index)

func test_getCard_validIndex() -> void:
	var step : Step = Step.new()
	var tmp : Card = Card.new()
	
	step.addCard(tmp)
	
	var card : Card = step.getCard(0)
	
	assert_eq(card, tmp, "card should be the same as the card added")

func test_getCard_tooHighIndex() -> void:
	var step : Step = Step.new()
	var tmp : Card = Card.new()
	
	step.addCard(tmp)
	
	var card : Card = step.getCard(1)
	
	assert_eq(card, null, "card should be null")

func test_getCard_negativeIndex() -> void:
	var step : Step = Step.new()
	var tmp : Card = Card.new()
	
	step.addCard(tmp)
	
	var card : Card = step.getCard(-1)
	
	assert_eq(card, null, "card should be null")

#getCards()

func test_getCards() -> void:
	var step : Step = Step.new()
	var tmp : Card = Card.new()
	
	step.addCard(tmp)
	
	var cards : Array = step.getCards()
	
	assert_eq(cards, [tmp], "card should be null")

#getStepInformation()
func test_getStepInformation() -> void:
	var step : Step = Step.new("Hello World!")
	
	var stepInformation : String = step.getStepInformation()
	
	assert_eq(stepInformation, "Hello World!")

