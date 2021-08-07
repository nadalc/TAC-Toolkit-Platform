extends Node2D

func displayCards(cards : Array):
	get_node("Card").set_visible(false)
	get_node("Card2").set_visible(false)
	get_node("Card3").set_visible(false)
	get_node("Card4").set_visible(false)

	for i in range (cards.size()):
		var card = null
		match i :
			0:
				card = get_node("Card")
			1:
				card = get_node("Card2")
			2:
				card = get_node("Card3")
			3:
				card = get_node("Card4")
		if card is Node2D:
			card.set_visible(true)
			card.get_node("Sprite").texture = TacDrawCard.new().getDeck(cards[i])
