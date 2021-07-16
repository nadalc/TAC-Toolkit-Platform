extends Node

class_name Participant

var username : String
var id : int
var role : Role

func _init() -> void:
	pass

# =-= Method =-=

func setUsername(p_username : String) -> void:
	self.username = p_username

func getUsername() -> String :
	return username

func setId(p_id : int) -> void:
	self.id = p_id

func getId() -> int:
	return id

func setRole(p_role) -> void:
	self.role = p_role

func getRole() -> Role:
	return role
