extends Node

var game = null
var menu = null
var main_menu = null

# 0 из главного меню, 1 из паузного меню
var StartSettingsIs = null 

func _ready():
	pass

func pause(s=1):
	get_tree().paused = bool(s)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if !s else Input.MOUSE_MODE_VISIBLE)
	pass

func LoadForObj(obj, name_scene): # obj = game, menu, main_menu
	var n = load("res://Assets/Scene/"+name_scene+".tscn").instance()
	obj.add_child(n)
	pass
	
func LoadScene(scene):
	get_tree().change_scene("res://Assets/Scene/"+scene+".tscn")
	pass
