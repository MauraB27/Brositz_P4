extends Area2D
@export var marker: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#teleports player body to the marker body to transition to level 2
func _on_body_entered(body: Node2D) -> void:
	#if body.is_in_group("player"):
	if body.name == "Player":
		body.global_position = marker.global_position
