extends Node

var gems
var tokens
var multiplier = 1

func _ready() -> void:
	gems = 0
	tokens = 0

func add_gems(amount):
	gems += amount

func remove_gems(amount):
	gems -= amount

func add_tokens(amount):
	tokens += amount

func remove_tokens(amount):
	tokens -= amount

func increase_mult(amount):
	multiplier += amount
