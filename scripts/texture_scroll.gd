extends MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var my_mat: Material = mesh.surface_get_material(0)
	var vector: Vector3 = my_mat.get('uv1_offset')
	vector.y -= 12.0 / 10.0 * delta
	my_mat.set('uv1_offset', vector)
	
