extends CharacterBody2D

var speed = 200
var jump = 200
var gravity = 400
var direction = 0
func _physics_process(delta):
	direction = Input.get_axis("move_left","move_right")
	velocity.x = direction * speed
	velocity.y += gravity * delta
	
	if Input.is_action_pressed("move_left") and is_on_floor():
		$Animations.flip_h = true
		$Animations.play("walk")
	elif Input.is_action_pressed("move_right") and is_on_floor():
		$Animations.flip_h = false
		$Animations.play("walk")
	
	else:
		$Animations.play("quiet")
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y -= jump
	move_and_slide()
