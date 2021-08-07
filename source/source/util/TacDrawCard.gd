extends DrawCard

class_name TacDrawCard

# =-= Method =-=

func getDeck(id) -> Resource:
	match id:
		0 :
			return load("res://asset/TAC cards_1/card_01/deck.png")
		1 :
			return load("res://asset/TAC cards_1/card_02/deck.png")
		2 :
			return load("res://asset/TAC cards_1/card_03/deck.png")
		3 :
			return load("res://asset/TAC cards_1/card_04/deck.png")
		4 :
			return load("res://asset/TAC cards_1/card_05/deck.png")
		5 :
			return load("res://asset/TAC cards_1/card_06/deck.png")
		6 :
			return load("res://asset/TAC cards_1/card_07/deck.png")
		7 :
			return load("res://asset/TAC cards_1/card_08/deck.png")
		8 :
			return load("res://asset/TAC cards_1/card_09/deck.png")
		9 :
			return load("res://asset/TAC cards_1/card_10/deck.png")
		10 :
			return load("res://asset/TAC cards_1/card_11/deck.png")
		11 :
			return load("res://asset/TAC cards_1/card_12/deck.png")
		12 :
			return load("res://asset/TAC cards_1/card_13/deck.png")
		13 :
			return load("res://asset/TAC cards_1/card_14/deck.png")
		14 :
			return load("res://asset/TAC cards_1/card_15/deck.png")
		15 :
			return load("res://asset/TAC cards_1/card_16/deck.png")
	return load("res://asset/color.png")

func getCard(id) -> Resource:
	match id:
		0 :
			return preload("res://asset/TAC cards_1/card_01/card.png")
		1 :
			return preload("res://asset/TAC cards_1/card_02/card.png")
		2 :
			return preload("res://asset/TAC cards_1/card_03/card.png")
		3 :
			return preload("res://asset/TAC cards_1/card_04/card.png")
		4 :
			return preload("res://asset/TAC cards_1/card_05/card.png")
		5 :
			return preload("res://asset/TAC cards_1/card_06/card.png")
		6 :
			return preload("res://asset/TAC cards_1/card_07/card.png")
		7 :
			return preload("res://asset/TAC cards_1/card_08/card.png")
		8 :
			return preload("res://asset/TAC cards_1/card_09/card.png")
		9 :
			return preload("res://asset/TAC cards_1/card_10/card.png")
		10 :
			return preload("res://asset/TAC cards_1/card_11/card.png")
		11 :
			return preload("res://asset/TAC cards_1/card_12/card.png")
		12 :
			return preload("res://asset/TAC cards_1/card_13/card.png")
		13 :
			return preload("res://asset/TAC cards_1/card_14/card.png")
		14 :
			return preload("res://asset/TAC cards_1/card_15/card.png")
		15 :
			return preload("res://asset/TAC cards_1/card_16/card.png")
		
	return load("res://asset/color.png")

func getValidCard(id) -> Resource:
	match id:
		0 :
			return preload("res://asset/TAC cards_1/card_01/card_valid.png")
		1 :
			return preload("res://asset/TAC cards_1/card_02/card_valid.png")
		2 :
			return preload("res://asset/TAC cards_1/card_03/card_valid.png")
		3 :
			return preload("res://asset/TAC cards_1/card_04/card_valid.png")
		4 :
			return preload("res://asset/TAC cards_1/card_05/card_valid.png")
		5 :
			return preload("res://asset/TAC cards_1/card_06/card_valid.png")
		6 :
			return preload("res://asset/TAC cards_1/card_07/card_valid.png")
		7 :
			return preload("res://asset/TAC cards_1/card_08/card_valid.png")
		8 :
			return preload("res://asset/TAC cards_1/card_09/card_valid.png")
		9 :
			return preload("res://asset/TAC cards_1/card_10/card_valid.png")
		10 :
			return preload("res://asset/TAC cards_1/card_11/card_valid.png")
		11 :
			return preload("res://asset/TAC cards_1/card_12/card_valid.png")
		12 :
			return preload("res://asset/TAC cards_1/card_13/card_valid.png")
		13 :
			return preload("res://asset/TAC cards_1/card_14/card_valid.png")
		14 :
			return preload("res://asset/TAC cards_1/card_15/card_valid.png")
		15 :
			return preload("res://asset/TAC cards_1/card_16/card_valid.png")
	return load("res://asset/color.png")

func getCardInformation(id) -> Resource: 
	match id:
		0 :
			return preload("res://asset/TAC cards_1/card_01/information.png")
		1 :
			return preload("res://asset/TAC cards_1/card_02/information.png")
		2 :
			return preload("res://asset/TAC cards_1/card_03/information.png")
		3 :
			return preload("res://asset/TAC cards_1/card_04/information.png")
		4 :
			return preload("res://asset/TAC cards_1/card_05/information.png")
		5 :
			return preload("res://asset/TAC cards_1/card_06/information.png")
		6 :
			return preload("res://asset/TAC cards_1/card_07/information.png")
		7 :
			return preload("res://asset/TAC cards_1/card_08/information.png")
		8 :
			return preload("res://asset/TAC cards_1/card_09/information.png")
		9 :
			return preload("res://asset/TAC cards_1/card_10/information.png")
		10 :
			return preload("res://asset/TAC cards_1/card_11/information.png")
		11 :
			return preload("res://asset/TAC cards_1/card_12/information.png")
		12 :
			return preload("res://asset/TAC cards_1/card_13/information.png")
		13 :
			return preload("res://asset/TAC cards_1/card_14/information.png")
		14 :
			return preload("res://asset/TAC cards_1/card_15/information.png")
		15 :
			return preload("res://asset/TAC cards_1/card_16/information.png")
	return load("res://asset/color.png")
