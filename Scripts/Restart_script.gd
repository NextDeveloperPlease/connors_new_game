extends "res://Scripts/Pause_button_script.gd"

func switch_scene():
	Scores.goto_scene(Scores.world_one)
	Scores.reset()
	Scores.current_scene_number = 1
	get_tree().paused = false
