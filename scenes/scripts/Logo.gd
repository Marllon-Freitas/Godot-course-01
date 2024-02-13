extends Sprite2D

var pos: Vector2 = Vector2.ZERO
var test_scale: float = 1
const speed: float = 2.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = Vector2(200, 100)
	position = pos

	var test_rotation: float = 45

	# Set the rotation, scale, and color of the sprite
	rotation = test_rotation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(delta, " seconds since the last frame")
	if Input.is_action_pressed("ui_right"):
		pos.x += speed
	if Input.is_action_pressed("ui_left"):
		pos.x -= speed
	if Input.is_action_pressed("ui_down"):
		pos.y += speed
	if Input.is_action_pressed("ui_up"):
		pos.y -= speed
	position = pos

	test_scale += 0.002
	scale = Vector2(test_scale, test_scale)
