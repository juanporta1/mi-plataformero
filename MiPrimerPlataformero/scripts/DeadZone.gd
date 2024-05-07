extends Area2D


func _on_body_entered(body):
	
	if body.name == "Player":
		body.set_velocity_y(-400)
		get_parent().queue_free()
		
	
