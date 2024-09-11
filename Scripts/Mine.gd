extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Ladder.updateID	(0)
	$Ladder2.updateID(1)
