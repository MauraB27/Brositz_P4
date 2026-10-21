extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	print("player entered trigger zone")
	
	#ensures all keys are in the inventory before unlocking door 2
	for item in ["mazeKeyA", "mazeKeyB", "mazeKeyC", "mazeKeyD"]:
		if (item not in GameManager.inventory):
			print(item + " not in inventory")
			return
		else:
			print(item +" in inventory")
			
	queue_free()
	$"../Door2".queue_free()
