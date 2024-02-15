extends CharacterBody2D

var speed: int = 500
var can_laser: bool = true
var can_grenade: bool = true

signal player_shoot_laser
signal player_throw_grenade

@onready var laser_shoot_timer: Timer = $LaserShootTimer
@onready var grenade_reload_timer: Timer = $GranadeReloadTimer


func _process(_delta):
	#input
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()  # automatic uses delta

	# laser shooting
	if Input.is_action_just_pressed("primary action") and can_laser:
		can_laser = false
		laser_shoot_timer.start()
		player_shoot_laser.emit()

	# grenade throwing
	if Input.is_action_just_pressed("secondary action") and can_grenade:
		can_grenade = false
		grenade_reload_timer.start()
		player_throw_grenade.emit()


func _on_granade_reload_timer_timeout():
	can_grenade = true


func _on_laser_shoot_timer_timeout():
	can_laser = true
