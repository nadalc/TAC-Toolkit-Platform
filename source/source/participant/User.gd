extends Role

class_name User

# =-= Method =-=

func joinTabletop() -> void:
	Designer.new().joinTabletop()
	
func leaveTabletop(participant : Participant) -> void:
	Designer.new().leaveTabletop(participant)
 
func viewScenario(step : Step) -> void:
	Designer.new().viewScenario(step)

func viewPersona() -> void:
	Designer.new().viewPersona()

func addCard(cardType : String, step : Step) -> void:
	Designer.new().addCard(cardType, step)

func removeCard(card : Card, step : Step) -> void:
	Designer.new().removeCard(card, step)

func addNote(text : String, card : Card, id : int) -> void:
	Designer.new().addNote(text, card, id)

func choosePathOfScenario(path) -> void:
	#chose a path of the scenario
	pass
