extends Node

class_name CardGrab

# =-= Method =-=
func move(dx, dy) -> void:
	var node = $"." # $ = get_node()
	node.position.x += dx
	node.position.y += dy

func highlight(boolean : bool):
	var node = $"./Sprite"
	#print new texture
