extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_body_entered(body: Node2D) -> void:
	#transition to level 3 for P4
	if body.name == "Player":
		get_tree().change_scene_to_file("res://Levels/level3.tscn")
