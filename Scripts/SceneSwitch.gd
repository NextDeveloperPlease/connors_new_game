extends Node

var current_scene = null
var current_scene_path = null

var main_menu = "res://Worlds/MainMenu.tscn"
var mines = "res://Worlds/Mines.tscn"

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	current_scene_path = main_menu

func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)

func _deferred_goto_scene(path):
	get_tree().change_scene_to_file(path)
	current_scene_path = path

func save_game():
	pass
