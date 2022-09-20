extends Node2D

var soul_up: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	var resource = preload("res://demo.tres")
	DialogueManager.show_example_dialogue_balloon(\
	"demo", \
	resource
	)

func _soul_up():
	Game.soul += 50

func _soul_down():
	Game.soul -= 50
