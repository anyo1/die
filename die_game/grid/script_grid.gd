extends TileMap




func _ready():
	get_enemies()

func get_enemies():
	
	var enemies : Array
	var children = get_children()
	
	for i in children.size():
		if children[i].is_in_group("enemy"):
			enemies.append(children[i])
	return (enemies)
	pass
