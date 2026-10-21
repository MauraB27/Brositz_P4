extends PathFollow2D
var speed: float = 0.5
@export var follow_path: PathFollow2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	#must multiply by delta in order to deal with frame rate independence
	progress_ratio += speed * delta
	# Reverse speed if progress ratio is 0 or 1
	if progress_ratio == 0.0:
		speed = -speed
	
	elif progress_ratio == 1.0:
		speed = -speed
	
