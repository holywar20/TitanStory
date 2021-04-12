extends GraphNode

func _ready():
	pass

# Signals
func _on_SimpleTextNode_close_request():
	queue_free()

func _on_SimpleTextNode_resize_request(new_minsize):
	rect_size = new_minsize
