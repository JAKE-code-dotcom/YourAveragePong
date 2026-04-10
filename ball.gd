extends CharacterBody2D

var speed = 400
var direction = Vector2.ZERO

func _ready() -> void:
	direction.y = [1,-1].pick_random()
	direction.x = [1,-1].pick_random()
	
func _physics_process(delta: float) -> void:
	speed+=delta
	$AnimatedSprite2D.play("default")
	if direction :
		velocity = direction * speed
	else :
		velocity = velocity.move_toward(Vector2.ZERO,speed)
		
	move_and_slide()
