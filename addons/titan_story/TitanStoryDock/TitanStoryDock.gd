tool
extends Control

var nodes = {
	"SimpleText" : preload("res://addons/titan_story/GraphNodes/SimpleText/SimpleText.tscn")
}

onready var storyGraph = $GraphEdit

func _ready():
	pass

# Buttons
func _on_AddNode_pressed():
	print("creating a fucking node!")
	var simpleText = nodes.SimpleText.instance()
	print( simpleText )
	storyGraph.add_child( simpleText )

func _on_GraphEdit_connection_request(from, fromSlot , to, toSlot ):
	print( from , fromSlot , to, toSlot )

func _on_GraphEdit_disconnection_request(from, fromSlot, to, toSlot):
	pass # Replace with function body.
