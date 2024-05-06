extends Control

func _ready():
	var play = get_node("Play")
	var exit = get_node("Exit")
	play.pressed.connect(init_game)
	exit.pressed.connect(quit)
	var level = preload("res://scenes/level_one.tscn")
	

func init_game():
	get_tree().change_scene_to_file("res://scenes/level_one.tscn")

func quit():
	get_tree().quit()
	
