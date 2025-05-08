extends PathFollow2D

var speed = 0.1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	var last_pos = Vector2()
	var velocity = global_position - last_pos
	progress_ratio += delta * speed
	last_pos = global_position
	
	
	# Printing the velocity, just need to add animation based off
	# if its going down or up i.e if velocity.x is increasing, it is moving right
	# so add right anim
	
	
	
