extends Node2D

export var spawn_location = Vector2(100,300)
onready var Player = load("res://Player/Player.tscn")


func _process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player.position = spawn_location
		player.name = "Player"
		add_child(player)
