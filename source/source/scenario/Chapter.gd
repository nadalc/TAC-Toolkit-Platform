extends Node

class_name Chapter

var steps : Array
var chapterInformation : String

func _init(p_steps : Array = [], p_chapterInformation : String = "") -> void:
	self.steps = p_steps
	self.chapterInformation = p_chapterInformation

# =-= Method =-=

func getStep(index : int) -> Step:
	if index > steps.size() - 1 or index < 0:
		print("index should access a valid position in steps.")
		return null
	
	var step : Step = steps[index]
	
	return step

func getSteps() -> Array:
	return self.steps 

func getChapterInformation() -> String:
	return self.chapterInformation
