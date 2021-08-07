extends Node

class_name Math_

func randomInt(p_min : int, p_max : int) -> int :
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	return rng.randf_range(p_min, p_max)

