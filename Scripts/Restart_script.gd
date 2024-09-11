extends "res://Scripts/Pause_button_script.gd"

func switch_scene():
	SceneSwitch.goto_scene(SceneSwitch.world_one)
	SceneSwitch.reset()
	SceneSwitch.current_scene_number = 1
	get_tree().paused = false
