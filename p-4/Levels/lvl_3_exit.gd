extends Area2D
@onready var instruction_label = $CanvasLayer/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_body_entered(body: Node2D) -> void:
	# Check if the body that entered is the player
	if body.name == "Player": 
		instruction_label.visible = true
	
	print("player entered trigger zone")
	
	#ensures all keys are in the inventory before unlocking door 2
	for item in ["sesame2"]:
		if (item not in GameManager.inventory):
			print(item + " not in inventory")
			return
		else:
			print(item +" in inventory")
			
	#queue_free()
	$"../ExitDoor".queue_free()
	$"../ExitSign".queue_free()

func _on_body_exited(body: Node2D) -> void:
	# Hide the text when the player leaves the area
	if body.name == "Player": 
		instruction_label.visible = false
		
	
	
