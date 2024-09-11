extends Node2D
var paused = false

func _ready():
	visible = false

func _input(_event):
	if Input.is_action_just_pressed('ui_cancel'):
		reveal()
		pause()

func reveal():
	visible = not visible

func pause():
	get_tree().paused = not get_tree().paused
