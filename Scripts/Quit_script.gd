extends "res://Scripts/Pause_button_script.gd"

func switch_scene():
	Scores.reset()
	get_tree().paused = false
	Scores.goto_scene(Scores.main_menu)
