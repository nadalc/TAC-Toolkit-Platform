extends Node

class_name Scenario

var chapters : Array 
var scenarioInformation : String

func _init(p_chapters : Array = [], p_scenarioInformation : String = "") -> void:
	self.chapters = p_chapters
	self.scenarioInformation = p_scenarioInformation

# =-= Method =-=

func getChapter(index : int) -> Chapter:
	if index > chapters.size() - 1 or index < 0:
		print("index should access a valid position in chapters.")
		return null
	
	var chapter : Chapter = chapters[index]
	
	return chapter

func getChapters() -> Array:
	return self.chapters 

func getScenarioInformation() -> String:
	return self.scenarioInformation
