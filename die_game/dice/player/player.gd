extends "res://dice/die_parent.gd"

onready var Grid = get_parent()
var turn_manager = load("res://Manager/turn_mana.tres")

signal dir(dir)

var tile_size = 64
var inputs = {"right": Vector2.RIGHT,
			"left": Vector2.LEFT,
			"up": Vector2.UP,
			"down": Vector2.DOWN}


func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2


func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			print(turn_manager.turn)
			turn_manager.turn = turn_manager.enemy_turn
			move(dir)
			print(dir)
			emit_signal("dir" , dir)
			


func move(dir):
	position += inputs[dir] * tile_size


