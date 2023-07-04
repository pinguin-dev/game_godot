extends Control

var game_begun = false
var alpha_mod


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept") and not game_begun:
		game_begin()
	
	if game_begun:
		alpha_mod = $Timer.wait_time / ($Timer.time_left + 0.001)
		$CanvasLayer/Label.set_modulate(Color(1,1,1,1/alpha_mod))


func game_begin():
	game_begun = true
	$Timer.start()


func _on_Timer_timeout():
	get_tree().change_scene("res://game_self/game_scenes/main.tscn")
