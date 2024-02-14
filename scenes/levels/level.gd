extends Node2D

var test_array: Array[String] = ["Hello", "World"]

enum States { IDLE, WALK, RUN }


# Called when the node enters the scene tree for the first time.
func _ready():
	$Logo.rotation_degrees = 45
	# this is the same as absolute path
	# $Sprite2D/Spri2D2/Sprite2D3/Target
	# Sprite2D
	# Spri2D2
	# Sprite2D3
	# Target

	# after adding in the editor access with unique name
	# the path is more simple, addressing the node directly
	%Target  # this is the same as $Sprite2D/Spri2D2/Sprite2D3/Target
	print(%Target)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Logo.rotation_degrees += 10 * delta

	if $Logo.position.x == 1000:
		$Logo.position.x = 0


func test_function():
	print("Hello World")
