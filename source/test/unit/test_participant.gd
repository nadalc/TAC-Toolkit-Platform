extends "res://addons/gut/test.gd"

var participant : Participant


func before_each() -> void:
	participant = Participant.new()

#setUsername(p_username)
func test_setUsername() -> void:
	var username = "toto"
	participant.setUsername(username)
	assert_eq(participant.username, username, "the participant username should be \"toto\"")

#getUsername()
func test_getUsername() -> void:
	var username = "toto"
	participant.username = username
	var result = participant.getUsername()
	assert_eq(result, username, "the result should be \"toto\"")

#setId(p_id)
func test_setID() -> void:
	var id = 1
	participant.setId(id)
	assert_eq(participant.id, id, "the participant id should be 1")

#getId()
func test_getId() -> void:
	var id = 1
	participant.id = id
	var result = participant.getId()
	assert_eq(result, id, "the result should be 1")

#setRole(role)
func test_setRole() -> void:
	var role = Role.new()
	participant.setRole(role)
	assert_eq(participant.role, role, "the participant should have a role")

#getRole()
func test_getRole() -> void:
	var role = Role.new()
	participant.role = role
	var result = participant.getRole()
	assert_eq(result, role, "result should be a role")
