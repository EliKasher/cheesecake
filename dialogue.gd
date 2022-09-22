extends CanvasLayer

func _ready():
	pass

func _load_dialogues():
	var resource = preload("res://demo.tres")
	DialogueManager.show_example_dialogue_balloon(\
	"demo", \
	resource
	)
