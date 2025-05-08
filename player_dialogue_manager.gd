extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_rynn_text_trigger_area_entered(area: Area2D) -> void:
	Dialogic.start("rynnDialogue")


func _on_rynn_text_trigger_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()


func _on_synn_text_trigger_area_entered(area: Area2D) -> void:
	Dialogic.start("synnDialogue")


func _on_synn_text_trigger_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()
