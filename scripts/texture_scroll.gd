extends MeshInstance3D
@onready var game_manager: GameManager = get_tree().get_first_node_in_group("GameManager")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var my_mat: Material = mesh.surface_get_material(0)
	var vector: Vector3 = my_mat.get('uv1_offset')
	vector.y -= game_manager.game_speed / 10.0 * delta
	my_mat.set('uv1_offset', vector)
	
	
