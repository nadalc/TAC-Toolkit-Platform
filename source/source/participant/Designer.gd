extends Role

class_name Designer

# =-= Method =-=
func joinTabletop() -> void:
	Spectator.new().joinTabletop()

func leaveTabletop(participant : Participant) -> void:
	Spectator.new().leaveTabletop(participant)
 
func viewScenario(step : Step) -> void:
	#show Scenario
	pass

func viewPersona() -> void:
	#show Persona
	pass

func addCard(cardType : String, step : Step) -> void:
	step.addCard(cardType)

func removeCard(card : Card, step : Step) -> void:
	step.hideCard(card)

func addNote(text : String, card : Card, id : int) -> void:
	card.updateNote(id, text)
