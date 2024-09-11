extends Area2D
var id


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	id = 0


func updateID(est_id):
	id=est_id


func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is CharacterBody2D:
		body.climb(id)
