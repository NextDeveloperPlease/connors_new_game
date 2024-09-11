extends Node

var gems
var tokens
var multiplier = 1

func _ready() -> void:
	gems = 0
	tokens = 0

func add_gems(amount):
	gems += amount
	print('Gems: ' + str(gems))

func remove_gems(amount):
	gems -= amount
	print('Gems: ' + str(gems))

func add_tokens(amount):
	tokens += amount
	print('Tokens: ' + str(tokens))

func remove_tokens(amount):
	tokens -= amount
	print('Tokens: ' + str(tokens))

func increase_mult(amount):
	multiplier += amount
	print('Multiplier: ' + str(multiplier))

func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		print('Gems: ' + str(gems))
		print('Tokens: ' + str(tokens))
