extends "res://Scripts/Pause_button_script.gd"

func switch_scene():
	get_tree().paused = false
	SceneSwitch.goto_scene(SceneSwitch.main_menu)
