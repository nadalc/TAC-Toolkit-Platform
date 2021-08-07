extends Node

class_name Tabletop

var scenario : Scenario

func _init(p_scenario : Scenario) -> void:
	self.scenario = p_scenario

# =-= Method =-=

func openScenario(step : Step) -> void:
	pass

func closeScenario() -> void:
	pass

func openTarget(step : Step) -> void:
	pass

func moveCard(dx, dy) -> void:
	pass

func highlightCard(card, boolean : bool) -> void:
	pass

func displayCardInformation(card) -> void:
	pass

func scroll(dy) -> void:
	pass
