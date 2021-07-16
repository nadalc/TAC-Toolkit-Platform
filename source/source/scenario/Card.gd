extends Node

class_name Card

var notes : Dictionary
var cardInformation : String

func _init(p_cardInformation : String = "") -> void:
	self.cardInformation = p_cardInformation
	self.notes = {}

# =-= Method =-= 

func addNote(id : int) -> void:
	if id == null:
		return
	
	notes[id] = ""

func removeNote(id : int) -> void:
	if id == null or not(notes.has(id)):
		return
	
	notes.erase(id)

func updateNote(id : int, text : String) -> void:
	if id == null :
		return
	if not(notes.has(id)):
		addNote(id)
	
	if text == "" :
		removeNote(id)
	else :
		notes[id] = text

func getNote(id) -> String:
	if id == null or not(notes.has(id)):
		return ""
	
	return notes.get(id)

func getNotes() -> Dictionary:
	return notes

func getCardInformation() -> String:
	return cardInformation
