extends Control

var soul_up: bool = false

var text_speed = 0.01

var dialog_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var resource = preload("res://dialogues.tres")
	Interface.show_dialogue(\
	"demo", \
	resource
	)
	$RichTextLabel.bbcode_text = ""
	load_dialog()

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
	
func load_dialogue():
	if dialog_index < dialog.size():
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		var tween_duration = text_speed * dialog[dialog_index].length()
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, tween_duration,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
		Game.soul -= 50
	else:
		queue_free()
	dialog_index += 1
