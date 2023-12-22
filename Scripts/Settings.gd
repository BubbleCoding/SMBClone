extends Button
@onready var main_menu = $".."
@onready var settings_menu = $"../../SettingsMenu"


func _on_pressed():
	main_menu.visible = false
	settings_menu.visible = true

