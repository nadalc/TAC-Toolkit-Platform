extends  "res://addons/gut/test.gd"

#getStep(index)

func test_getStep_valid_index() -> void:
	var steps : Array = []
	steps.append(Step.new())
	
	var chapter : Chapter = Chapter.new(steps)
	
	var step = chapter.getStep(0)
	assert_eq(step, steps[0], "step should be the same step as the one on steps")

func test_getStep_with_too_high_index() -> void:
	var steps : Array = []
	steps.append(Step.new())
	
	var chapter : Chapter = Chapter.new(steps)
	
	var step : Step = chapter.getStep(1)
	
	assert_eq(step, null, "step should be null")

func test_getStep_with_negative_index() -> void:
	var steps : Array = []
	steps.append(Step.new())
	
	var chapter : Chapter = Chapter.new(steps)
	
	var step : Step = chapter.getStep(-1)
	
	assert_eq(step, null, "step should be null")

#getSteps()

func test_getSteps() -> void:
	var tmp : Array = []
	tmp.append(Step.new())
	
	var chapter : Chapter = Chapter.new(tmp)
	var steps : Array = chapter.getSteps()
	
	assert_eq(steps, tmp, "steps should be the same as tmp")

#getChapterInformation()

func test_getChapterInformation() -> void:
	var chapter : Chapter = Chapter.new([], "Hello World!")
	var information : String = chapter.getChapterInformation()
	
	assert_eq(information, "Hello World!", "information should be \"Hello World!\"")

