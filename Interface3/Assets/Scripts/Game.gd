extends Spatial


func _ready():
	G.game = self
	G.pause(0)
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		G.pause()
		G.LoadForObj(G.game, "PauseMenu")
		pass
	pass
