extends Node

class_name RandomC

func getColor() -> Color :
	var math = Math_.new()
	var h : float = math.randomInt(0, 360)
	var s : float = math.randomInt(40, 60)
	var v : float = math.randomInt(50, 70)
	
	var rgb : Color = Color.from_hsv(h/360, s/100, v/100)
	
	return rgb

