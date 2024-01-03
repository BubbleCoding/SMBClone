extends Node2D
@onready var in_game_menu = $"."

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if Input.is_action_just_pressed("menu"):
		in_game_menu.visible = !in_game_menu.visible
	if in_game_menu.visible == true:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_close_pressed():
	in_game_menu.visible = false

func _process(delta):
	pass
	#var middle = camera_2d.get_screen_center_position()
	#print(middle)
	#set_transform(Transform2D(Vector2(1, 0), Vector2(0, 1),Vector2(100,0)))

