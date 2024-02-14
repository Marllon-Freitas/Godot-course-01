extends Sprite2D

var pos: Vector2 = Vector2.ZERO
var test_scale: float = 1
const speed: float = 2.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	pos = Vector2(200, 100)
	position = pos

	# var test_rotation: float = 45

	# # Set the rotation, scale, and color of the sprite
	# rotation = test_rotation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Move the sprite
	pos.x += speed * delta
	position = pos
