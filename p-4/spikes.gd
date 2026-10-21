extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#kills player if they get struck by the spikes
func _on_body_entered(body: Node2D) -> void:
	#If body player
	body.kill()
	GameManager.inventory.clear()
	
