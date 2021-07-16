extends  "res://addons/gut/test.gd"

var designer : Designer
var id : int

func before_each():
	designer = Designer.new()
	id = 42

#addCard(cartType, step)
func test_addCard() -> void:
	var step : Step = Step.new()
	var cardType : String = "Hello World!"
	
	designer.addCard(cardType, step)

	assert_eq(step.cards.size(), 1, "The size of cards should be increased")

#removeCard(card, step)
func test_removeCard_valid() -> void:
	var step : Step = Step.new()
	var cardType : String = "Hello World!"
	
	designer.addCard(cardType, step)
	
	designer.removeCard(step.getCard(cardType), step)

	assert_eq(step.visibleCards.size(), 0, "Cards should be empty")

func test_removeCard_invalid() -> void:
	var step : Step = Step.new()
	var cardType : String = "Hello World!"
	
	designer.addCard(cardType, step)
	
	designer.removeCard(Card.new(), step)

	assert_eq(step.cards.size(), 1, "Cards should have 1 element")

#addNote()
func test_addNote() -> void:
	var step : Step = Step.new()
	var cardType : String = "Hello World!"
	
	designer.addCard(cardType, step) 
	
	designer.addNote("Hello World!", step.getCard(cardType),id)
	
	assert_eq(step.getCard(cardType).getNote(id), "Hello World!", "the note should be update")

func test_addNote_blankText() -> void:
	var step : Step = Step.new()
	var cardType : String = "Hello World!"
	
	designer.addCard(cardType, step) 
	
	designer.addNote("Hello World!", step.getCard(cardType),id)
	designer.addNote("", step.getCard(cardType), id)
	
	assert_eq(step.getCard(cardType).getNotes().size(), 0, "Notes should be empty")

