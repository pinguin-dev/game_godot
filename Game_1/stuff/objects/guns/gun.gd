extends Sprite

var shooting_speed
const bullets_paths = [preload('res://stuff/objects/bullets/bullet.tscn')]

func attack(type):
	var bullet = bullets_paths[type].instance()
	get_parent().get_parent().add_child(bullet)
	
	bullet.position = $ShootPoint.global_position
	bullet.rotation = get_global_mouse_position().angle_to_point(get_parent().position)
	bullet.velocity = get_global_mouse_position() - bullet.position
