tool
extends EditorPlugin

const TITAN_STORY_GRAPH = preload("res://addons/titan_story/TitanStoryDock/TitanStoryDock.tscn")

var dock
var mainPanel

func _enter_tree():
	mainPanel = TITAN_STORY_GRAPH.instance()
	get_editor_interface().get_editor_viewport().add_child(mainPanel)
	make_visible(false)
	
	# To add tools to the dock
	# var dock = preload("res://addons/titan_story/TitanStoryDock/TitanStoryDock.tscn").instance()
	# add_control_to_dock(DOCK_SLOT_LEFT_UL, dock)


func _exit_tree():
	if mainPanel:
		mainPanel.queue_free()
		
	# To remove tools from the dock
	# remove_control_from_docks(dock)
	# dock.free()
	
func has_main_screen():
	return true


func make_visible(visible):
	if mainPanel:
		mainPanel.visible = true


func get_plugin_name():
	return "Titan Story"


func get_plugin_icon():
	return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")
