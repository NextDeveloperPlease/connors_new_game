extends "res://Scripts/Pause_button_script.gd"

func _ready():
	entered = false
	visible = true
	
func switch_scene():
	get_tree().quit()
