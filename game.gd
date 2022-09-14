extends Node

signal soul_changed
var soul = 100 setget set_soul

func set_soul(value):
	soul = value
	emit_signal("soul_changed", soul)
