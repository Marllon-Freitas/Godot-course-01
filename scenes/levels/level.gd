extends Node2D

var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene: PackedScene = preload("res://scenes/projectiles/grenade.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# Add your code here
	pass


func _on_gate_player_entered_gate(body):
	print("Player entered gate", body)


func _on_player_player_shoot_laser(pos: Vector2):
	var laser = laser_scene.instantiate()
	laser.position = pos
	$Projectiles.add_child(laser)


func _on_player_player_throw_grenade(pos: Vector2):
	var grenade = grenade_scene.instantiate()
	grenade.position = pos
	$Projectiles.add_child(grenade)
