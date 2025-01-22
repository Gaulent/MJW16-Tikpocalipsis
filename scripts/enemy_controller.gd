extends Area3D

@export var walk_speed:float = 0.5
@onready var game_manager: GameManager = get_tree().get_first_node_in_group("GameManager")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if position.x < 0:
		$AnimatedSprite3D.scale.x = -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $AnimatedSprite3D.scale.x == -1:
		position += walk_speed * delta * Vector3.RIGHT
	else:
		position += walk_speed * delta * Vector3.LEFT

	position += game_manager.game_speed * delta * Vector3.BACK