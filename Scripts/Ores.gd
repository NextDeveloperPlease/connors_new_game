extends Area2D
var gem_amount
var entered
var range_entered
var upgraded
var pressed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gem_amount = 1
	entered = false
	range_entered = false
	upgraded = false
	pressed = false


func assign_gem_amount(amount):
	gem_amount = amount


func _input(event: InputEvent) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and entered and range_entered and not pressed:
		GlobalValues.add_gems(gem_amount * GlobalValues.multiplier)
		if not upgraded:
			pressed = true
	if event is InputEventMouseButton and event.is_released():
		pressed = false

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	range_entered = true


func _on_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	range_entered = false


func _on_mouse_shape_entered(shape_idx: int) -> void:
	entered = true


func _on_mouse_shape_exited(shape_idx: int) -> void:
	entered = false
