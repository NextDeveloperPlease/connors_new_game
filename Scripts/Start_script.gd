extends "res://Scripts/Pause_button_script.gd"

func _ready():
	entered = false
	visible = true

func switch_scene():
	SceneSwitch.goto_scene(SceneSwitch.mines)
