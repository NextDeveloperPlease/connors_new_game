extends "res://Scripts/Pause_button_script.gd"

func _ready():
	entered = false
	visible = true

func switch_scene():
	Scores.current_scene_number = 1
	Scores.goto_next()
