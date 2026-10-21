extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("jump") and is_on_floor():
	#	velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("left", "right")
	#if direction:
	#	velocity.x = direction * SPEED
	#else:
	#	velocity.x = move_toward(velocity.x, 0, SPEED)
	
	#makes the game top down rather than platform
	velocity = Input.get_vector("left", "right", "up", "down") * delta * SPEED * 50

	move_and_slide()
	
	for i in get_slide_collision_count():       # For all collisions
		var collision = get_slide_collision(i)  # Find the collision by index
		var collider = collision.get_collider() # Get its collider
		if collider is RigidBody2D:             # Check if its rigidbody, and push
			var push_dir = -collision.get_normal()
			var push_force = 40.00
			collider.apply_impulse(push_dir * push_force)
	
func kill():
	get_tree().reload_current_scene() # Restart the current scene
