extends Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	area_entered.connect(destroy_enemy)
	

func destroy_enemy(area3d: Area3D):
	area3d.queue_free()
