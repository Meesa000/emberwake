extends Node2D
@onready var voice = $"../../../AudioManager/Rynn_SynnVoice"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_rynn_text_trigger_area_entered(area: Area2D) -> void:
	Dialogic.start("rynnDialogue")
	voice.play()

func _on_rynn_text_trigger_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()


func _on_synn_text_trigger_area_entered(area: Area2D) -> void:
	Dialogic.start("synnDialogue")
	voice.play()

func _on_synn_text_trigger_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()

func _on_altar_trigger_area_area_entered(area: Area2D) -> void:
	Dialogic.start("player_altar_first_scene")

func _on_altar_trigger_area_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()
