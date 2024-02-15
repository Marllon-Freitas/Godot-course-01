extends StaticBody2D

signal player_entered_gate(body)


func _on_area_2d_body_entered(_body: Node2D):
	player_entered_gate.emit(_body)
