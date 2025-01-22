extends CharacterBody3D


@export var speed: float = 4.0
@export var jump_velocity: float = 5.0
@export var range_movement: float = 3.0
@onready var jump_clip:AudioStreamPlayer = $JumpClip

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
		jump_clip.play()
		
	position.x += Input.get_axis('move_left','move_right') * speed * delta
	position.x = clamp(position.x, -range_movement, range_movement)
	
	move_and_slide()
