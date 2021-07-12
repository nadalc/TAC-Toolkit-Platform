extends Node

class_name Role #INTERFACE

func _init():
	pass

# =-= Method =-=

func joinTabletop():
	pass

func leaveTabletop(participant):
	pass

func viewScenario(step):
	pass

func viewPersona():
	pass

func addCard(cardType, step):
	pass

func removeCard(Card, step):
	pass

func addNote(text, card):
	pass

func choosePathOfScenario(path):
	pass
