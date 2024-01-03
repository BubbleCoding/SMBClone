extends Area2D

func _ready():
	if Save.lvl1coll == true:
		queue_free()
func _on_body_entered(body):
	if body.name == "Player":
		Save.lvl1coll = true
		queue_free()
