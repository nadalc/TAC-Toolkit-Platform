extends "res://addons/gut/test.gd"

#getChapter(index)

func test_getChapter_with_valid_index() -> void:
	var chapters : Array = []
	chapters.append(Chapter.new())
	
	var scenario : Scenario = Scenario.new(chapters)
	
	var chapter : Chapter = scenario.getChapter(0)
	
	assert_eq(chapter, chapters[0], "chapter should be the same chapter as the one on chapters")

func test_getChapter_with_too_high_index() -> void:
	var chapters : Array = []
	chapters.append(Chapter.new())
	
	var scenario : Scenario = Scenario.new(chapters)
	
	var chapter : Chapter = scenario.getChapter(1)
	
	assert_eq(chapter, null, "chapter should be null")

func test_getChapter_with_negative_index() -> void:
	var chapters : Array = []
	chapters.append(Chapter.new())
	
	var scenario : Scenario = Scenario.new(chapters)
	
	var chapter : Chapter = scenario.getChapter(-1)
	
	assert_eq(chapter, null, "chapter should be null")

#getChapters()

func test_getChapters_empty() -> void:
	var scenario : Scenario = Scenario.new()
	var chapters : Array = scenario.getChapters()
	
	assert_eq(chapters, [], "chapters should be empty")

func test_getChapters_filled() -> void:
	var tmp : Array = []
	tmp.append(Chapter.new())
	
	var scenario : Scenario = Scenario.new(tmp)
	var chapters : Array = scenario.getChapters()
	
	assert_eq(chapters, tmp, "chapters should be the same as tmp")

#getScenario()

func test_getScenarioInformation() -> void:
	var scenario : Scenario = Scenario.new([], "Hello World!")
	var information : String = scenario.getScenarioInformation()
	
	assert_eq(information, "Hello World!", "information should be \"Hello World!\"")
