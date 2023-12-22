extends Button
@onready var level_select = $"../../LevelSelect"
@onready var main_menu = $".."


func _on_pressed():
	level_select.visible = true
	main_menu.visible = false

