extends Node2D
@export var speed = 0.1
@onready var animated_sprite = $"../AnimatedSprite2D"

func move_npc():
	direction = self.global_position
	
func _physics_process(delta: float) -> void:
	move_npc()
