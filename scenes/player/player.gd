extends CharacterBody2D

var speed = 500


func _process(_delta):
	#input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()  # automatic uses delta

	# laser shooting
	if Input.is_action_just_pressed("primary action"):
		print("pew pew")

	# grenade throwing
	if Input.is_action_just_pressed("secondary action"):
		print("boom aaaaaaaaa")
