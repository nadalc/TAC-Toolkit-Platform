extends Deck

class_name HelloCards

# =-= Methods =-=

func getCard(cardType : String) -> Card :
	if cardType == "Hello World!" :
		return Card.new("Hello World!")
	return null
