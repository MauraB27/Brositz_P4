extends Area2D

@export var instructions: Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _ready() -> void:
	#instructions.visible = true

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		instructions.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		instructions.visible = false
