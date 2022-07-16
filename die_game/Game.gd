extends Node2D


var turn_manager = load("res://Manager/turn_mana.tres")

onready var grid = $Grid



# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	
	turn_manager.connect("player_turn_started" , self , "_on_player_turn")
	turn_manager.connect("enemy_turn_started" , self , '_on_enemy_turn')
	
	turn_manager.turn = turn_manager.player_turn
	pass # Replace with function body.

func _process(delta):
	pass



func _on_player_turn():
	pass

func _on_enemy_turn():
	var enemies = grid.get_enemies()
	
	for i in enemies.size():
		enemies[i].act()
		turn_manager.turn = turn_manager.player_turn
	
	pass


