extends KinematicBody2D

var vector = Vector2.ZERO
var vertical_speed = 350.0
var horizontal_speed = 350.0

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		position.x += horizontal_speed * delta
	if Input.is_action_pressed("move_left"):
		position.x -= horizontal_speed * delta
	if Input.is_action_pressed("move_up"):
		position.y -= vertical_speed * delta
	if Input.is_action_pressed("move_down"):
		position.y += vertical_speed * delta
