extends Area2D
var entered
var range_entered
var opened

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	entered = false
	range_entered = false
	opened = false


func _input(event: InputEvent) -> void:
	var tokens = randi_range(10, 100)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and entered and range_entered and not opened:
		GlobalValues.add_tokens(tokens * GlobalValues.multiplier)
		opened = true


func _on_mouse_entered() -> void:
	entered = true


func _on_mouse_exited() -> void:
	entered = false


func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is CharacterBody2D:
		range_entered = true


func _on_area_2d_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is CharacterBody2D:
		range_entered = false
