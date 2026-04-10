extends Area2D
@export var speed = 500
var scr_sz
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scr_sz = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	var velocity = Vector2.ZERO
	$AnimatedSprite2D.play()
	if Input.is_action_pressed("right2") :
		velocity.x += 1
	if Input.is_action_pressed("left2") :
		velocity.x -= 1

	if velocity.length() > 0 :
		velocity = velocity.normalized() * speed
		

	position += velocity * delta
	position = position.clamp(Vector2.ZERO,scr_sz)
	
