extends "res://addons/gut/test.gd"

#addNote(id)

func test_addNote() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	
	assert_eq(card.notes.size(), 1, "the size of notes should be increased")

func test_addNote_allReadyExistNote() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.addNote(id)
	
	assert_eq(card.notes.size(), 1, "the size of notes should increase once")

func test_addNote_null() -> void:
	var card : Card = Card.new()
	var id = null
	
	#card.addNote(id)
	
	assert_eq(card.notes.size(), 0, "the size of notes should be empty")

#removeNote(id)

func test_removeNote_validId() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.removeNote(id)
	
	assert_eq(card.notes.size(), 0, "the size of notes should be empty")

func test_removeNote_invalidId() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.removeNote(43)
	
	assert_eq(card.notes.size(), 1, "the size of notes should not decrease")

#updateNote(id, text)

func test_updateNote_validId() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.updateNote(id, "Hello World!")

	assert_eq(card.notes.get(id), "Hello World!", "the text of the note should be \"Hello World\"")

func test_updateNote_invalidId() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.updateNote(id, "Hello World!")
	card.updateNote(43, "!dlroW olleH")
	
	assert_eq(card.notes.get(id), "Hello World!", "the text of the note should be \"Hello World\"")


#getNote(id)

func test_getNote_validId() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.updateNote(id, "Hello World!")
	
	var note : String = card.getNote(id)
	
	assert_eq(note, "Hello World!", "the text of the note should be \"Hello World\"")

func test_getNote_invalidId() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	card.updateNote(id, "Hello World!")
	
	var note : String = card.getNote(43)
	
	assert_eq(note, "", "the note should be empty")

#getNotes()

func test_getNotes() -> void:
	var card : Card = Card.new()
	var id : int = 42
	
	card.addNote(id)
	
	var notes : Dictionary = card.getNotes()
	
	assert_eq(notes, card.notes, "notes should be the same as card.notes")

#getCardInformation()

func test_getCardInformation() -> void:
	var card : Card = Card.new("Hello World!")
	
	var cardInformation : String = card.getCardInformation()
	
	assert_eq(cardInformation, "Hello World!", "cardInformation should be \"Hello World!\"")
