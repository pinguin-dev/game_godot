extends KinematicBody2D


onready var gun = $Position2D/Gun

var vector = Vector2.ZERO
var vertical_speed = 350.0
var horizontal_speed = 350.0

var isMelee = false 


func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		position.x += horizontal_speed * delta
	if Input.is_action_pressed("move_left"):
		position.x -= horizontal_speed * delta
	if Input.is_action_pressed("move_up"):
		position.y -= vertical_speed * delta
	if Input.is_action_pressed("move_down"):
		position.y += vertical_speed * delta


func _process(delta):
	if Input.is_action_just_pressed("attack_change"):
		change_attack()
	if Input.is_action_just_pressed("attack"):
		if isMelee:
			hit(0)
		else:
			shoot(0)
	$Position2D.look_at(get_global_mouse_position())


func shoot(type):
	gun.attack(type)


func hit(type):
	$Sword.attack()

	
func change_attack():
	isMelee = !isMelee
	gun.visible = !gun.visible 
	$Sword.visible = !$Sword.visible 
