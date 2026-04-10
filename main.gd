extends Node2D
var p2_sc = 0
var p1_sc = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Player.position = Vector2(240,60)
	$Player2.position = Vector2(240 ,650)
	$Ball.position = Vector2(240,360)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$p1_score.text = str(p1_sc)
	$p2_score.text = str(p2_sc)

func _on_r_coll_body_entered(body: Node2D) -> void:
	body.direction.x *=-1



func _on_r_coll_2_body_entered(body: Node2D) -> void:
	body.direction.x *=-1


func _on_p_1_ar_body_entered(body: Node2D) -> void:
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(240,360)
	add_child(e)
	p2_sc +=1
	

func _on_p_2_ar_body_entered(body: Node2D) -> void:
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(240,360)
	add_child(e)
	p1_sc +=1


func _on_player_body_entered(body: Node2D) -> void:
	body.direction.y *=-1
	body.speed+=20
	$Player.speed+=10
func _on_player_2_body_entered(body: Node2D) -> void:
	body.direction.y *=-1
	body.speed+=50
	$Player2.speed+=10
