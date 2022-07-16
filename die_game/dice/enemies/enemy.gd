extends Node2D


# enemies constitute the main probllem of the game

#1 give each enemy die side_stats (pcg)
#2 place em randomly in the game
#3 after player act they (think) act


var directions = {"right": Vector2.RIGHT,
			"left": Vector2.LEFT,
			"up": Vector2.UP,
			"down": Vector2.DOWN}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func side_stats_gen():
	# see heartbeast tuto on inventory
	pass


func act():
	position.y = position.y + 1
	print("sex")

