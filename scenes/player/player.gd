extends CharacterBody2D

var speed: int = 500
var can_laser: bool = true
var can_grenade: bool = true

signal player_shoot_laser(pos: Vector2)
signal player_throw_grenade(pos: Vector2, direction: Vector2)

@onready var laser_shoot_timer: Timer = $LaserShootTimer
@onready var grenade_reload_timer: Timer = $GranadeReloadTimer


func _process(_delta):
	# input
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()  # automatic uses delta

	# rotate player
	look_at(get_global_mouse_position())

	var player_direction: Vector2 = (get_global_mouse_position() - position).normalized()
	# laser shooting
	if Input.is_action_just_pressed("primary action") and can_laser:
		$GPUParticles2D.emitting = true
		# randmlly select a marker 2D fo the laser to shoot from
		var laser_marker: Array = $LaserStartPoitions.get_children()
		var selected_laser_marker: Node2D = laser_marker[randi() % laser_marker.size()]
		can_laser = false
		laser_shoot_timer.start()
		player_shoot_laser.emit(selected_laser_marker.global_position, player_direction)

	# grenade throwing
	if Input.is_action_just_pressed("secondary action") and can_grenade:
		var pos_marker: Vector2 = $LaserStartPoitions.get_children()[0].global_position
		can_grenade = false
		grenade_reload_timer.start()
		player_throw_grenade.emit(pos_marker, player_direction)


func _on_granade_reload_timer_timeout():
	can_grenade = true


func _on_laser_shoot_timer_timeout():
	can_laser = true
