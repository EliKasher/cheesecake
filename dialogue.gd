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

func _soul_up():
	Game.soul += 50

func _soul_down():
	Game.soul -= 50
	if Game.soul <= 0:
		get_tree().change_scene("res://game_over.tscn")
	else:
		pass

