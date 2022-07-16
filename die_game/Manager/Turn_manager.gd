extends Resource
class_name turn_manager

enum {player_turn , enemy_turn}

var turn setget set_turn

signal player_turn_started()
signal enemy_turn_started()

func set_turn (value):
	turn = value
	
	match turn:
		enemy_turn : emit_signal("enemy_turn_started")
		player_turn : emit_signal("player_turn_started")
