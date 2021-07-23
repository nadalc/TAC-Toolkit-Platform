extends Node2D

var state : String
var scenario : Scenario

func _ready():
	state = "init"
	initTabletop()

func initTabletop():
	var chapters : Array = [
		Chapter.new([
			Step.new(),
			Step.new(),
			Step.new()
			]),
		Chapter.new([
			Step.new()
			])
		]
	scenario = Scenario.new(chapters)
	
	for chapter in scenario.getChapters():
		if chapter is Chapter:
			chapter.getChapterInformation()
	

func _process(delta):
	match[state]:
		["init"]:
			pass
		["scroll"]:
			$"./board".position.x -= 2
		["scroll+"]:
			$"./board".position.x -= 10

func _on_Area2D_mouse_entered():
	state = "scroll"


func _on_Area2D_mouse_exited():
	state = "init"



func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEvent:
		if event.is_action_pressed("ui_leftclick") :
			state = "scroll+"
		elif event.is_action_released("ui_leftclick") :
			state = "scroll"
