extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _load_dialogues():
	var resource = preload("res://demo.tres")
	DialogueManager.show_example_dialogue_balloon(\
	"demo", \
	resource
	)
