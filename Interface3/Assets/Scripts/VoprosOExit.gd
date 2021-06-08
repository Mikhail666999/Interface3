extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass



func _on_ExitGame_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_ExitMainMenu_pressed():
	G.LoadScene("MainMenu")
	pass # Replace with function body.
