extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass


func _on_Exit_pressed():
	if G.StartSettingsIs == 0:
		queue_free()
		G.StartSettingsIs = null
		G.LoadScene("MainMenu")
		pass
	elif G.StartSettingsIs == 1:
		queue_free()
		G.StartSettingsIs = null
		G.LoadForObj(G.game, "PauseMenu")
		pass
	pass # Replace with function body.
