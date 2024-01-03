extends Node2D

func level_complete():
	print("Level complete!")
	Save.lvl1comp = true
	get_tree().change_scene_to_file("res://Scenes/Levels/level_2.tscn")
