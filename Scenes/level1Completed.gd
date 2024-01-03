extends Sprite2D
@onready var level_1_completed = $"."



func _ready():
	if Save.lvl1coll == true:
		level_1_completed.visible = true
