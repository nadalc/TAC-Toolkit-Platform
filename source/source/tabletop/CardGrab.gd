extends Node

class_name CardGrab

var id : int

# =-= Method =-=
func move(dx, dy) -> void:
	var node = $"." # $ = get_node()
	node.position.x += dx
	node.position.y += dy

func highlight(boolean : bool):
	var node = $"./Sprite"
	match boolean:
		true :
			node.texture = TacDrawCard.new().getValidCard(id)
		false :
			node.texture = TacDrawCard.new().getCard(id)
