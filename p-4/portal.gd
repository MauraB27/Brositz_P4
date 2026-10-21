extends Area2D
@export var marker: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#teleports player body to the marker body to transition to level 2
func _on_body_entered(body: Node2D) -> void:
	#if body.is_in_group("player"):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://Levels/level2.tscn")
		#body.global_position = marker.global_position
