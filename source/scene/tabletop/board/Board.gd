extends Node2D

var size : int

signal ent_target(step)
signal ext_target(step)
signal p_card(card)
	
func display(scenario : Scenario) -> void:
	
	var i = 0
	
	var chapterOffset : int = 60
	
	var stepSize : int = 220
	var stepOffset : int = 40
	
	size = 0
	
	var begin : int = chapterOffset
	
	for i_chapter in scenario.getChapters():
		if i_chapter is Chapter:
			
			var color : Color = RandomC.new().getColor()
			
			var i_position : int = begin + stepOffset
			
			for i_step in i_chapter.getSteps():
				if i_step is Step:
					var step = preload("res://scene/tabletop/board/Step.tscn").instance()
					step.position = Vector2(i_position,100)
					step.z_index = 1
					step.id = i
					
					step.connect("ent_target", self, "ent_target")
					step.connect("ext_target", self, "ext_target")
					step.connect("p_card", self, "p_card")
					
					step.setTitle(i_step.getStepInformation())
					
					color.v -= 0.05
					step.get_node("Target/Sprite").modulate = color
					color.v += 0.05
					
					i += 1
					add_child(step)
					i_position += stepSize + stepOffset
					
			
			var end : float = i_position - begin
			
			var chapterBackground = preload("res://scene/util/Blank.tscn").instance()
			chapterBackground.get_node("Sprite").modulate = color
			
			chapterBackground.position = Vector2(begin, 40)
			chapterBackground.scale = Vector2(end/100, 4.3)
			chapterBackground.z_index = -1
			
			add_child(chapterBackground)
			
			color.v -= 0.10
			
			var chapterLabel = preload("res://scene/util/Label.tscn").instance()
			chapterLabel.position = Vector2(begin + end/2 - 100, 25)
			chapterLabel.setText(i_chapter.getChapterInformation())
			chapterLabel.get_node("Sprite").modulate = color
			chapterLabel.get_node("Label").modulate = Color.bisque
			
			add_child(chapterLabel)
			
			size = i_position
			begin = size + chapterOffset


func p_card(card):
	emit_signal("p_card", card)

func ent_target(step):
	emit_signal("ent_target", step)

func ext_target(step):
	emit_signal("ext_target", step)
