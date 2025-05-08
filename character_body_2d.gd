extends CharacterBody2D

@export var speed = 100
@onready var animated_sprite = $AnimatedSprite2D
func player_move():
	var input_direction = Input.get_vector("left", "right","up","down")
	velocity = input_direction * speed
	
	if input_direction.x == 0 and input_direction.y == 0:
		animated_sprite.play("idle")
	if input_direction.x > 0:
		animated_sprite.play("walk_right")
	elif input_direction.x < 0: 
		animated_sprite.play("walk_left")
	if input_direction.y > 0:
		animated_sprite.play("walk_down")
	elif input_direction.y < 0:
		animated_sprite.play("walk_up")
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	player_move()
	move_and_slide()
	
