extends Node3D

@export var spawn_interval: float = 0.4
@export var spawn_types:Array[PackedScene]
@onready var spawn_point:PathFollow3D = $SpawnArea/SpawnPoint

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.timeout.connect(spawn)
	
func spawn():
	spawn_types.pick_random()
	spawn_point.progress_ratio = randf()
	var current_cp:Node3D = spawn_types.pick_random().instantiate()
	current_cp.position = spawn_point.position
	
	add_child(current_cp)
	