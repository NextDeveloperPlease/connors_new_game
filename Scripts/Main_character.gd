extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	#print(position.x, position.y)
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Interact with ladder

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _input(event):
	if Input.is_key_pressed(KEY_F):
		get_tree().quit()


func climb(object:int):
	match(object):
		0: if position.y > 900:
			position = Vector2(1017,894)
		1: if position.y > 820:
			position = Vector2(1326,814)
