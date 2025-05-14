extends Node2D
@onready var rynn_synn_voice = $"../../../AudioManager/Rynn_SynnVoice"
@onready var shrine_keeper_voice = $"../../../AudioManager/ShrineKeeperVoice"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_synn_text_trigger_area_entered(area: Area2D) -> void:
	Dialogic.start("synnDialogue")
	rynn_synn_voice.play()
	

func _on_synn_text_trigger_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()
	

func _on_rynn_text_trigger_area_entered(area: Area2D) -> void:
	Dialogic.start("rynnDialogue")
	rynn_synn_voice.play()
	

func _on_rynn_text_trigger_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()
	

func _on_altar_trigger_area_area_entered(area: Area2D) -> void:
	Dialogic.start("player_altar_first_scene")
	

func _on_altar_trigger_area_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()
	

func _on_shrine_keeper_trigger_area_area_entered(area: Area2D) -> void:
	Dialogic.start("player_monk_altar_convo")
	shrine_keeper_voice.play()


func _on_shrine_keeper_trigger_area_area_exited(area: Area2D) -> void:
	Dialogic.end_timeline()
