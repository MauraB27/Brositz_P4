extends Area2D
@export var object_name: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#adds keys to the inventory
func _on_body_entered(body: Node2D) -> void:
	print("YOU GOT THAT KEY")
	GameManager.inventory.append(name)
	queue_free()
