extends CharacterBody2D

var speed = 100
var gravitiy = 100

func _ready():
	$AnimatedSprite2D.scale.x *= -1

func _physics_process(delta):
	velocity.y += gravitiy * delta
	velocity.x = speed
	if $AnimatedSprite2D/FrontRay.is_colliding() or !$AnimatedSprite2D/DownRay.is_colliding():
		speed *= -1
		$AnimatedSprite2D.scale.x *= -1
		$AnimatedSprite2D.play("walk")
		
	move_and_slide()
	
