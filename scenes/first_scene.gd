extends Node2D

var soul_up: bool = false

func _ready():
	Dialogue._load_dialogues()

func _soul_up():
	Game.soul += 50

func _soul_down():
	Game.soul -= 50
