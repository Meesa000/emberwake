extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var Text = get_node("AnimatedSprite2D/TriggerArea/NameLabel")
@export var speed = 0.1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Text.hide()


# Trigger when another area 2d enters rynns area
func _on_area_2d_area_entered(area: Area2D) -> void:
	print("Player has entered Rynn's area!")
	Text.show()
	

# Trigger when another area 2d exits
func _on_area_2d_area_exited(area: Area2D) -> void:
	print("Player has left Rynn's area!")
	Text.hide()
