extends KinematicBody2D

var velocity = Vector2.RIGHT
var speed = 300
var damage = 1

func _physics_process(delta):
	var collision_info = move_and_collide(velocity.normalized() * delta * speed)

#func _process(delta): 
