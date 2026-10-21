extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

#kills player if they get struck by the saw
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.kill()
		GameManager.inventory.clear()
