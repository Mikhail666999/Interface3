extends Control


func _ready():
	G.menu = self
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		G.pause(0)
		queue_free()
	pass

func _on_Resume_pressed():
	G.pause(0)
	queue_free()
	pass # Replace with function body.


func _on_Restart_pressed():
	G.LoadScene("Game")
	pass # Replace with function body.


func _on_Settings_pressed():
	queue_free()
	G.StartSettingsIs = 1
	G.LoadForObj(G.game, "MenuSettings")
	pass # Replace with function body.


func _on_Exit_pressed():
	G.LoadForObj(G.menu, "VoprosOExit")
	pass # Replace with function body.
