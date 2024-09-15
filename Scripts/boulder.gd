extends Area2D
var entered = false
var unclicked
var clicked
@export var color = Color.WHITE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	unclicked = $Boulder_unbroken
	clicked = $Boulder_broken
	modulate = color

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print('clicked')
		GlobalValues.add_gems(1)
		print(GlobalValues.gems)
		if unclicked.visible:
			print('break')
			unclicked.visible = false
			clicked.visible = true

func _on_mouse_shape_entered(shape_idx: int) -> void:
	print('entered')
	entered = true

func _on_mouse_shape_exited(shape_idx: int) -> void:
	entered = false
	if not unclicked.visible:
		unclicked.visible = true
		clicked.visible = false
