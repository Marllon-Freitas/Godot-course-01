extends Node2D

var test_array: Array[String] = ["Hello", "World"]

enum States { IDLE, WALK, RUN }


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# Add your code here
	pass


func test_function():
	print("Hello World")


func _on_gate_player_entered_gate(body):
	print("Player entered gate", body)


func _on_player_player_shoot_laser():
	print("Player shot laser from signal")


func _on_player_player_throw_grenade():
	print("Player threw grenade from signal")
