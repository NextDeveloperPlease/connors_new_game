extends Node

var gems
var tokens
var multiplier = 1

func _ready() -> void:
	gems = 0
	tokens = 0

func add_gems(amount):
	gems += amount
	print(gems)

func remove_gems(amount):
	gems -= amount
	print(gems)

func add_tokens(amount):
	tokens += amount
	print(tokens)

func remove_tokens(amount):
	tokens -= amount
	print(tokens)

func increase_mult(amount):
	multiplier += amount
	print(multiplier)
