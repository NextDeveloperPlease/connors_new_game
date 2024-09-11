extends Area2D
var entered = false
var pressed = false
var init_pos
var direction
var rot
var v = 10
var init_v_y = -8
var g = 8
var v_x
var v_y

# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	init_pos = rng.randi_range(0, 1600)
	position = Vector2(init_pos, 600)
	direction = rng.randf_range(PI/4, 3*PI/4)
	rot = rng.randi_range(-1,1)
	rotation = rng.randf_range(0, 360)
	v_x = v * cos(direction)
	if position.x <= 800:
		if v_x < 0:
			v_x *= -1
	else:
		if v_x > 0:
			v_x *=-1
	v_y = (init_v_y)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	v_y += g * delta
	var pos_x = position.x + v_x
	var pos_y = position.y + v_y
	position = Vector2(pos_x, pos_y)
	if position.y > 800:
		Scores.game_over = true
	var rot_speed = 2
	rotation = rotation + rot_speed * delta * rot

func _input(event):
	if event is InputEventMouseButton and entered:
		print('Down')
		$".".get_parent().remove_child($".")
		increment()

func _on_mouse_shape_entered(_shape_idx):
	entered = true

func _on_mouse_shape_exited(_shape_idx):
	entered = false

func increment():
	print(str(Scores.mult) + " " + str(Scores.inc_value))
	Scores.score = ((Scores.mult * Scores.inc_value) * 10) + Scores.score
	Scores.level_amount -= 1
