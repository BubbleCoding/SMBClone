extends Sprite2D
@onready var level_1_completed = $"."



func _ready():
	if Save.lvl1comp == true:
		level_1_completed.visible = true
