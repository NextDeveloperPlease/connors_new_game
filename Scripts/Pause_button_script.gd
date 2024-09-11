extends Area2D
var entered

# Called when the node enters the scene tree for the first time.
func _ready():
	entered = false

func _input(event):
	if event is InputEventMouseButton and entered and event.is_pressed():
		print('Down')
		switch_scene()

func _on_mouse_shape_entered(_shape_idx):
	print('entered')
	entered = true

func _on_mouse_shape_exited(_shape_idx):
	entered = false

func switch_scene():
	SceneSwitch.goto_scene(SceneSwitch.current_scene_path)
