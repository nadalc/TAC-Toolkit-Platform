extends Node2D

var participant : Participant

var state : String
var scenario : Scenario

var mainState : String
var scrollDirection : int

var exitDeck

var currentCard

var popup

var step

var mouseEvent : InputEventMouse


func _ready():
	
	participant = Participant.new()
	participant.setRole(Designer.new())
	formload()

func initTabletop():
	var chapters : Array = [
		Chapter.new([
			Step.new("Seeking Advice"),
			Step.new("Choosing Technology")
			], "Pre-Use Acceptability"),
		Chapter.new([
			Step.new("First Interaction"),
			Step.new("Next Day"),
			Step.new("A Week Later")
			], "Initial Use Acceptance"),
		Chapter.new([
			Step.new("After a Month"),
			Step.new("After 3 Months"),
			Step.new("After a Year")
			], "Sustained Use Acceptance")
		]
	scenario = Scenario.new(chapters)
	
	for chapter in scenario.getChapters():
		if chapter is Chapter:
			chapter.getChapterInformation()

func _process(_delta):
	timer()

# =-= Action =-=
func formload() -> void:
	mainState = "Init"
	state = "Init"
	initTabletop()
	$Board.display(scenario)

func A0() -> void:
	if popup is CardGrab :
		var dx = mouseEvent.relative.x * 0.8
		var dy = mouseEvent.relative.y * 0.8
		popup.move(dx,dy)

func A1() -> void:
	remove_child(popup)
	
	popup = preload("res://scene/tabletop/CardGrab.tscn").instance()
	popup.id = currentCard.id

	popup.get_node("Sprite").texture = TacDrawCard.new().getCard(popup.id)
	
	popup.global_position = currentCard.global_position * 0.8
	popup.global_position.y -= 60
	
	add_child(popup)
	
func A2() -> void:
	remove_child(popup)

func A3() -> void:
	A2()
	
	#attention
	step.addCard(popup.id)

func A4() -> void:
	#attention
	step.removeCard(popup.id)

func A5() -> void:
	if popup is CardGrab:
		popup.highlight(false)

func A6() -> void:
	if popup is CardGrab:
		popup.highlight(true)

func A7() -> void:
	pass

func A8() -> void:
	$Hand.unfold()

func A9() -> void:
	
	popup = preload("res://scene/tabletop/CardInformation.tscn").instance()
	popup.id = currentCard.id
	popup.get_node("Sprite").texture = TacDrawCard.new().getCardInformation(popup.id)
	
	popup.global_position = currentCard.global_position * 0.8
	popup.global_position.y -= 100
	popup.global_position.x += 10
	
	add_child(popup)

func A10() -> void:
	remove_child(popup)

func A11() -> void:
	pass

func A12() -> void:
	pass

func A13() -> void:
	pass

func A14() -> void:
	pass

func A15() -> void:
	pass

func A16() -> void:
	pass

func A17() -> void:
	pass

func A18() -> void:
	pass

func A19() -> void:
	var newPosition = $Board.position.x + scrollDirection * 2
	if newPosition > 0 :
		$Board.position.x = 0
	elif newPosition < -$Board.size :
		$Board.position.x = -$Board.size
	else:
		$Board.position.x +=  scrollDirection * 2

func A20() -> void:
	var newPosition = $Board.position.x + scrollDirection * 2
	if newPosition > 0 :
		$Board.position.x = 0
	elif newPosition < -$Board.size :
		$Board.position.x = -$Board.size
	else:
		$Board.position.x +=  scrollDirection * 10

func A21() -> void:
	pass

func A22() -> void:
	pass

func A23() -> void:
	pass

func A24() -> void:
	pass

# =-= Event =-=
func p_scrollButton() -> void:
	match state:
		"Scroll":
			A17()
			state = "Scroll++"

func r_scrollButton() -> void:
	match state:
		"Scroll++":
			A15()
			state = "Scroll"

func ent_scrollButton() -> void:
	match state:
		"Init":
			A15()
			state = "Scroll"

func ext_scrollButton() -> void:
	match state:
		"Scroll":
			A16()
			state = "Init"
		"Scroll++":
			A18()
			state = "Init"

func p_deck() -> void:
	match state:
		"Init":
			mainState = "Init"
			A1()
			state = "Grab deck"
		"Open target":
			mainState = "Open target"
			A1()
			state = "Grab deck"
		"Hover card":
			A1()
			state = "Grab deck"

func r_deck() -> void:
	match state:
		"Grab deck":
			A2()
			state = mainState
		"Inside target":
			A3()
			state = mainState

func ent_deck() -> void:
	match state:
		"Init":
			A9()
			mainState = "Init"
			state = "Hover card"
		"Open target":
			A9()
			mainState = "Open target"
			state = "Hover card"
		"Hover card":
			if popup.id != currentCard.id :
				A10()
				A9()
				state = "Hover card"

func ext_deck() -> void:
	match state:
		"Hover card":
			if exitDeck.id != currentCard.id :
				A10()
				A9()
				state = "Hover card"
			else :
				A10()
				state = mainState

func p_card() -> void:
	match state:
		"Init":
			A1()
			A4()
			mainState = "Init"
			state = "Grab card"
		"Open target":
			A1()
			A4()
			mainState = "Open target"
			state = "Grab card"
		"Hover card":
			A1()
			A4()
			state = "Grab card"

func r_card() -> void:
	match state:
		"Grab card":
			A3()
			state = mainState
		"Outside target":
			A2()
			state = mainState

func ent_card() -> void:
	match state:
		"Init":
			A9()
			mainState = "Init"
			state = "Hover card"
		"Open target":
			A9()
			mainState = "Open target"
			state = "Hover card"
		"Hover card":
			if popup.id != currentCard.id :
				A10()
				A9()
				state = "Hover card"

func ext_card() -> void:
	match state:
		"Hover card":
			if exitDeck.id != currentCard.id :
				A9()
				state = "Hover card"
			else :
				A10()
				state = mainState
			

func c_target() -> void:
	match state:
		"Init":
			A24()
			mainState = "Open target"
			state = "Open target"

func ent_target() -> void:
	match state:
		"Grab deck":
			A6()
			state = "Inside target"
		"Outside target":
			A6()
			state = "Grab card"

func ext_target() -> void:
	match state:
		"Grab card":
			A5()
			state = "Outside target"
		"Inside target":
			A5()
			state = "Grab deck"

func MoveMouse() -> void:
	match state:
		"Grab deck":
			A0()
			state = "Grab deck"
		"Grab card":
			A0()
			state = "Grab card"
		"Inside target":
			A0()
			state = "Inside target"
		"Outside target":
			A0()
			state = "Outside target"

func timer() -> void:
	match state:
		"Scroll":
			A19()
			state = "Scroll"
		"Scroll++":
			A20()
			state = "Scroll++"

func c_scenario() -> void:
	match state:
		"Init":
			A21()
			state = "Open scenario"

func c_chapter() -> void:
	match state:
		"Init":
			A22()
			state = "Open scenario"

func c_step() -> void:
	match state: 
		"Init":
			A23()
			state = "Open scenario"
	
func c_board() -> void:
	match state:
		"Open scenario":
			A7()
			mainState = "Init"
			state = "Init"
		"Open note":
			A12()
			state = mainState
		"Write text":
			A14()
			state = "Open note"

func c_unfold() -> void:
	match state:
		"Init":
			A8()
			state = mainState
		"Open target":
			A8()
			state = mainState

func c_note() -> void:
	match state:
		"Init":
			A11()
			mainState = "Init"
			state = "Open note"
		"Open target":
			A11()
			mainState = "Open target"
			state = "Open note"

func c_text() -> void:
	A13()
	state = "Write text"


# =-= Input =-=
func _on_Area2D_ent_scrollButton(node):
	scrollDirection = node.scrollDirection
	ent_scrollButton()


func _on_Area2D_ext_scrollButton(node):
	ext_scrollButton()


func _on_Area2D_p_scrollButton(node):
	scrollDirection = node.scrollDirection
	p_scrollButton()


func _on_Area2D_r_scrollButton(node):
	r_scrollButton()


func _on_Hand_p_deck(deck):
	currentCard = deck
	p_deck()


func _on_Hand_ext_deck(deck):
	exitDeck = deck
	ext_deck()


func _on_Hand_ent_deck(deck):
	currentCard = deck
	ent_deck()



func _on_Area2D3_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_released("ui_leftclick"):
			r_card()
			r_deck()
	if event is InputEventMouseMotion:
		mouseEvent = event
		MoveMouse()


func _on_Board_ent_target(p_step):
	step = p_step
	ent_target()


func _on_Board_ext_target(p_step):
	step = p_step
	ext_target()


func _on_Board_p_card(p_card):
	currentCard = p_card
	p_card()
	


func _on_Hand_p_unfoldButton():
	c_unfold()
