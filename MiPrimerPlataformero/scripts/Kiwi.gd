extends Area2D


func _on_body_entered(body):
	
	if body.name == "Player":
		$AnimatedSprite2D.play("catch")
		globals_var.points += 5
		

func _process(delta):
	if not $AnimatedSprite2D.is_playing():
		queue_free()
