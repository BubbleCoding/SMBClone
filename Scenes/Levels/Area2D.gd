extends Area2D
@onready var level_2 = $".."

func _on_body_entered(body):
	if body.name == "Player":
		level_2.level_complete()
		
		

