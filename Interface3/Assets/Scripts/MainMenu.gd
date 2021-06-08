extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	G.main_menu = self
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass # Replace with function body.



func _on_Start_pressed():
	get_tree().change_scene("res://Assets/Scene/Game.tscn")
	pass # Replace with function body.


func _on_Settings_pressed():
	G.StartSettingsIs = 0
	G.LoadForObj(G.main_menu, "MenuSettings")
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.
